<template>
  <div id="learningPage">
    <!-- Page Title -->
    <div class="page-header">
      <h1 class="page-title">📘 Basic Learning</h1>
      <p class="page-description">Foundations Track</p>
    </div>

    <!-- Level Content -->
    <a-row :gutter="[24, 24]" class="levels-content">
      <a-col :xs="24" :lg="24">
        <div class="level-section">
          <div class="level-grid">
            <div
              v-for="(level, index) in mainLevels"
              :key="level.key"
              class="level-card main-level"
              @click="goToLevel(level.key)"
            >
              <div class="level-number">{{ index + 1 }}</div>
              <div class="level-content">
                <h3 class="level-title">{{ level.title }}</h3>
                <div class="level-meta">
                  <span class="level-difficulty">⭐ Foundation</span>
                </div>
              </div>
              <div class="level-action">
                <a-button type="primary" size="small">Start Lesson</a-button>
              </div>
            </div>
          </div>
        </div>
      </a-col>
    </a-row>
  </div>
</template>

<script setup lang="ts">
import { useRouter } from 'vue-router';
import mainLevels from '../levels/mainLevels';

const router = useRouter();

const goToLevel = (levelKey: string) => {
  router.push(`/learn/${levelKey}`);
};
</script>

<style scoped>
#learningPage {
  max-width: 1400px;
  margin: 0 auto;
  padding: 0 16px;
}

/* Page Title */
.page-header {
  text-align: left;
  margin-bottom: 24px;
  padding: 18px 20px;
  background: var(--surface);
  border-radius: 16px;
  border: 1px solid var(--border);
  box-shadow: 0 14px 30px rgba(15, 23, 42, 0.08);
}

.page-title {
  font-size: 28px;
  font-weight: bold;
  margin-bottom: 8px;
  color: var(--text);
}

.page-description {
  font-size: 14px;
  color: var(--muted);
  margin: 0;
}

/* Level Content */
.levels-content {
  margin-bottom: 24px;
}

.level-section {
  height: 100%;
}

/* Level Grid */
.level-grid {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.level-card {
  display: flex;
  align-items: center;
  padding: 12px 16px;
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 8px;
  cursor: pointer;
  transition: all 0.2s ease;
  box-shadow: 0 8px 18px rgba(15, 23, 42, 0.06);
}

.level-card:hover {
  border-color: #3b82f6;
  box-shadow: 0 4px 6px rgba(59, 130, 246, 0.1);
  transform: translateY(-1px);
}

.main-level:hover {
  border-color: #3b82f6;
}

/* Main Level Style */
.main-level .level-number {
  width: 32px;
  height: 32px;
  background: linear-gradient(135deg, #3b82f6, #1d4ed8);
  color: white;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: bold;
  font-size: 14px;
  margin-right: 12px;
  flex-shrink: 0;
}

.level-content {
  flex: 1;
  min-width: 0;
}

.level-title {
  font-size: 15px;
  font-weight: 600;
  margin: 0 0 6px 0;
  color: #111418;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.level-meta {
  display: flex;
  align-items: center;
  gap: 8px;
  flex-wrap: wrap;
}

.level-difficulty {
  font-size: 12px;
  color: #5f6b79;
}

.level-action {
  margin-left: 12px;
  flex-shrink: 0;
}

/* Responsive Design */
@media (max-width: 768px) {
  #learningPage {
    padding: 0 12px;
  }

  .page-title {
    font-size: 24px;
  }

  .section-title {
    font-size: 18px;
  }

  .level-card {
    padding: 10px 12px;
  }

  .level-title {
    font-size: 14px;
  }

  .main-level .level-number {
    width: 28px;
    height: 28px;
    margin-right: 10px;
    font-size: 12px;
  }
}

@media (max-width: 480px) {
  .level-meta {
    flex-direction: column;
    align-items: flex-start;
    gap: 4px;
  }

  .level-action {
    margin-left: 8px;
  }
}

/* Touch Device Optimization */
@media (hover: none) {
  .level-card {
    transition: none;
  }

  .level-card:active {
    transform: scale(0.98);
  }
}
</style>
