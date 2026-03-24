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
          <a-menu-item key="/learn">学习</a-menu-item>
          <a-menu-item key="/levels">关卡</a-menu-item>
          <a-menu-item key="/playground">广场</a-menu-item>
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
              关于作者
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
          <a href="https://www.mianshiya.com" target="_blank">面试刷题</a>
        </a-space>
      </p>
      <p>
        SQL fun learning ©{{ currentYear }} by
        <a href="https://github.com/coderjingtao" target="_blank"
          >Jingtao Liu</a
        >
      </p>
    </div>
    <a-back-top :style="{ right: '24px' }" />

    <!-- 关于作者弹窗组件 -->
    <AboutAuthorModal v-model:visible="aboutModalVisible" />
  </div>
</template>

<script setup lang="ts">
import { computed, ref } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import {
  BookOutlined,
  GlobalOutlined,
  UserOutlined,
} from '@ant-design/icons-vue';
import AboutAuthorModal from './components/AboutAuthorModal.vue';

const route = useRoute();
const router = useRouter();
const selectedKeys = computed(() => [route.path]);

// 获取当前年份
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
  border-bottom: 1px solid #f0f0f0;
  padding: 0 24px;
}

.ant-menu-horizontal {
  border-bottom: none !important;
}

.logo {
  width: 56px;
}

.title {
  margin-left: 8px;
  font-size: 20px;
  color: #000;
  white-space: nowrap;
}

.content {
  padding: 24px;
}

.footer {
  padding: 12px;
  text-align: center;
  background: #efefef;

  p {
    margin-bottom: 4px;
  }
}
</style>
