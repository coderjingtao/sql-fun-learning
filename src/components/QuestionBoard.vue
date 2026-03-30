<template>
  <div id="questionBoard">
    <a-card v-if="level" id="questionCard">
      <md-viewer :value="level.content" />
      <a-divider />
      <div>
        <a-button v-if="levelNum > 0" style="float: left" @click="toPrevLevel">
          Previous
        </a-button>
        <a-button
          v-if="levelNum < mainLevels.length - 1"
          type="primary"
          style="float: right"
          :disabled="resultStatus !== RESULT_STATUS_ENUM.SUCCEED"
          @click="toNextLevel"
        >
          Next
        </a-button>
        <a-button
          v-if="levelNum === mainLevels.length - 1"
          type="primary"
          style="float: right"
          :disabled="resultStatus !== RESULT_STATUS_ENUM.SUCCEED"
          @click="doWin"
        >
          Complete
        </a-button>
      </div>
    </a-card>
    <a-card v-else>Level loading failed</a-card>

    <!-- Completion Modal -->
    <a-modal
      v-model:visible="showWinModal"
      :footer="null"
      :closable="true"
      centered
      width="400px"
    >
      <div class="win-modal-content">
        <div class="win-icon">🎉</div>
        <h2 class="win-title">Basic Learning Completed!</h2>
        <p class="win-message">You have completed the foundations track. Ready for advanced challenges.</p>
        <a-button type="primary" @click="goToChallengeLearning"
          >Go to Challenge Learning</a-button
        >
      </div>
    </a-modal>
  </div>
</template>

<script setup lang="ts">
import { computed, ref, toRefs, watch } from 'vue';
import mainLevels from '../levels/mainLevels';
import { getCurrentLevelNum, getNextLevel, getPrevLevel } from '../levels';
import { useRouter } from 'vue-router';
import { RESULT_STATUS_ENUM } from '../core/result';
import MdViewer from './MdViewer.vue';
import confetti from 'canvas-confetti';

interface Props {
  level: LevelType;
  resultStatus: number;
}

const props = withDefaults(defineProps<Props>(), {});
const { level } = toRefs(props);
const router = useRouter();
const levelNum = computed(() => {
  return getCurrentLevelNum(level.value);
});

/**
 * When switching levels, scroll to top
 */
watch([levelNum], () => {
  scrollTo({
    top: 0,
  });
  const questionCardDom = document.getElementById('questionCard');
  if (questionCardDom) {
    questionCardDom.scrollTop = 0;
  }
});

/**
 * Complete all levels
 */
const showWinModal = ref(false);

const doWin = () => {
  showWinModal.value = true;
  // Trigger confetti effect
  const duration = 3000;
  const animationEnd = Date.now() + duration;
  const defaults = { startVelocity: 30, spread: 360, ticks: 60, zIndex: 9999 };

  const randomInRange = (min: number, max: number) => {
    return Math.random() * (max - min) + min;
  };

  const interval = setInterval(() => {
    const timeLeft = animationEnd - Date.now();

    if (timeLeft <= 0) {
      return clearInterval(interval);
    }

    const particleCount = 50 * (timeLeft / duration);
    confetti({
      ...defaults,
      particleCount,
      origin: { x: randomInRange(0.1, 0.3), y: Math.random() - 0.2 },
    });
    confetti({
      ...defaults,
      particleCount,
      origin: { x: randomInRange(0.7, 0.9), y: Math.random() - 0.2 },
    });
  }, 250);
};

const goToChallengeLearning = () => {
  showWinModal.value = false;
  router.push('/challenge-learning');
};

/**
 * Previous level
 */
const toPrevLevel = () => {
  const toLevel = getPrevLevel(level.value);
  if (toLevel) {
    router.push(`/learn/${toLevel.key}`);
  }
};

/**
 * Next level
 */
const toNextLevel = () => {
  const toLevel = getNextLevel(level.value);
  if (toLevel) {
    router.push(`/learn/${toLevel.key}`);
  }
};
</script>

<style>
#questionBoard #questionCard {
  max-height: calc(100vh - 100px);
  min-height: 600px;
  overflow-y: auto;
}

.win-modal-content {
  text-align: center;
  padding: 20px 0;
}

.win-icon {
  font-size: 64px;
  margin-bottom: 16px;
}

.win-title {
  color: #1890ff;
  margin-bottom: 12px;
}

.win-message {
  font-size: 16px;
  color: #666;
  margin-bottom: 24px;
}
</style>
