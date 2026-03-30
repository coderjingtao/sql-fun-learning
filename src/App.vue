<template>
  <div id="app">
    <a-row class="header" type="flex" align="middle">
      <a-col flex="200px" style="margin: 0 auto; padding-right: 24px">
        <RouterLink to="/">
          <a-row align="middle" :wrap="false">
            <img src="./assets/logo.png" alt="SQL fun learning" class="logo" />
            <span class="title">SQL Fun Learning</span>
          </a-row>
        </RouterLink>
      </a-col>
      <a-col flex="auto">
        <a-menu
          :selected-keys="selectedKeys"
          mode="horizontal"
          :style="{ lineHeight: '64px' }"
          @click="doClickMenu"
        >
          <a-menu-item key="/learn">
            <BookOutlined />
            Progressive Learning
          </a-menu-item>
          <a-menu-item key="/basic-learning">
            <ReadOutlined />
            Basic Learning
          </a-menu-item>
          <a-menu-item key="/challenge-learning">
            <TrophyOutlined />
            Challenge Learning
          </a-menu-item>
          <a-menu-item key="/playground">
            <CodeOutlined />
            Playground
          </a-menu-item>
          <a-menu-item>
            <a href="https://aus-hub.vercel.app/" target="_blank">
              <a-badge
                count="new"
                size="small"
                :offset="[16, 24]"
                color="green"
              >
                <GlobalOutlined />
                Aus Hub
              </a-badge>
            </a>
          </a-menu-item>
          <a-menu-item key="about">
            <span
              @click.stop="showAboutModal"
              style="cursor: pointer; display: inline-block; width: 100%"
            >
              <user-outlined />
              About Author
            </span>
          </a-menu-item>
        </a-menu>
      </a-col>
    </a-row>
    <div class="content">
      <router-view />
    </div>
    <div class="footer">
      <p>
        <a-space size="middle">
          <a href="https://aus-hub.vercel.app/" target="_blank"
            >Australia Service Navigation</a
          >
          <a
            href="https://www.linkedin.com/in/jingtaojosephliu/"
            target="_blank"
            >About Author</a
          >
          <RouterLink to="/">SQL Practice</RouterLink>
        </a-space>
      </p>
      <p>
        SQL fun learning ©{{ currentYear }} by
        <a href="https://www.linkedin.com/in/jingtaojosephliu/" target="_blank"
          >Jingtao Liu</a
        >
      </p>
    </div>
    <a-back-top :style="{ right: '24px' }" />

    <!-- About Author Modal Component -->
    <AboutAuthorModal v-model:visible="aboutModalVisible" />
  </div>
</template>

<script setup lang="ts">
import { computed, ref } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import {
  BookOutlined,
  CodeOutlined,
  GlobalOutlined,
  ReadOutlined,
  TrophyOutlined,
  UserOutlined,
} from '@ant-design/icons-vue';
import AboutAuthorModal from './components/AboutAuthorModal.vue';

const route = useRoute();
const router = useRouter();
const selectedKeys = computed(() => {
  if (route.path.startsWith('/learn')) {
    return ['/learn'];
  }
  if (route.path.startsWith('/basic-learning')) {
    return ['/basic-learning'];
  }
  if (route.path.startsWith('/challenge-learning')) {
    return ['/challenge-learning'];
  }
  if (route.path.startsWith('/playground')) {
    return ['/playground'];
  }
  return [route.path];
});

// Get current year
const currentYear = computed(() => new Date().getFullYear());

const aboutModalVisible = ref(false);

const showAboutModal = () => {
  aboutModalVisible.value = true;
};

const doClickMenu = ({ key }: any) => {
  if (key && key !== 'about') {
    router.push({
      path: key,
    });
  }
};
</script>

<style scoped>
.header {
  position: sticky;
  top: 0;
  z-index: 10;
  border-bottom: 1px solid var(--border);
  padding: 4px 24px;
  background: rgba(255, 255, 255, 0.92);
  backdrop-filter: blur(10px);
}

.ant-menu-horizontal {
  border-bottom: none !important;
}

.logo {
  width: 48px;
}

.title {
  margin-left: 8px;
  font-size: 20px;
  font-weight: 700;
  color: var(--text);
  white-space: nowrap;
}

.content {
  padding: 28px 24px 56px;
  max-width: 1280px;
  margin: 0 auto;
}

.footer {
  padding: 16px 12px 24px;
  text-align: center;
  color: var(--muted);
  border-top: 1px solid var(--border);
  background: transparent;

  p {
    margin-bottom: 4px;
  }
}
</style>
