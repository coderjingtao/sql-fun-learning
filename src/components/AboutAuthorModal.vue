<template>
  <a-modal
    v-model:visible="visible"
    :footer="null"
    width="480px"
    centered
    :closable="false"
    class="about-author-modal"
    @cancel="handleClose"
  >
    <div class="about-content">
      <div class="modal-header">
        <div class="header-left">
          <div class="icon-wrapper">
            <UserOutlined class="header-icon" />
          </div>
          <h2 class="header-title">About Author</h2>
        </div>
        <button class="close-btn" @click="handleClose">
          <CloseOutlined class="close-icon" />
        </button>
      </div>

      <div class="author-info">
        <h3 class="author-name">Jingtao Liu</h3>
        <p class="author-title">Experienced Senior Software Engineer</p>
      </div>

      <p class="author-desc">
        A tech blogger who enjoys communicating and exchanging ideas with others
        in the world of programming.
      </p>

      <div class="qrcode-section">
        <p class="qrcode-hint">
          Please scan the QR code and follow me on LinkedIn.
        </p>
        <div class="qrcode-container">
          <img :src="qrcodeUrl" alt="LinkedIn QR Code" class="qrcode-image" />
        </div>
      </div>
    </div>
  </a-modal>
</template>

<script setup lang="ts">
import { computed } from "vue";
import { UserOutlined, CloseOutlined } from "@ant-design/icons-vue";
import qrcodeImage from "../assets/joseph-qrcode.jpeg";

interface Props {
  visible: boolean;
}

const props = withDefaults(defineProps<Props>(), {
  visible: false,
});

const emit = defineEmits(["update:visible"]);

const visible = computed({
  get: () => props.visible,
  set: (value: boolean) => emit('update:visible', value),
});

const qrcodeUrl = qrcodeImage;

const handleClose = () => {
  visible.value = false;
};
</script>

<style scoped>
.about-content {
  padding: 0;
}

.modal-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 24px;
}

.header-left {
  display: flex;
  align-items: center;
  gap: 12px;
}

.icon-wrapper {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background: linear-gradient(to bottom right, #0b4a7a, #08345a);
  display: flex;
  align-items: center;
  justify-content: center;
}

.header-icon {
  color: white;
  font-size: 18px;
}

.header-title {
  font-size: 24px;
  font-weight: bold;
  color: #111418;
  margin: 0;
}

.close-btn {
  color: #617589;
  padding: 8px;
  border: none;
  background: transparent;
  border-radius: 50%;
  cursor: pointer;
  transition: all 0.2s;
}

.close-btn:hover {
  color: #0b4a7a;
  background: #f5f5f5;
}

.close-icon {
  font-size: 20px;
}

.author-info {
  text-align: center;
  margin-bottom: 16px;
}

.author-name {
  font-size: 20px;
  font-weight: 600;
  color: #0b4a7a;
  margin: 0 0 4px 0;
}

.author-title {
  font-size: 14px;
  font-weight: 500;
  color: #617589;
  margin: 0;
}

.author-desc {
  text-align: center;
  font-size: 14px;
  color: #5f6b79;
  line-height: 1.6;
  margin: 0 0 20px 0;
}

.qrcode-section {
  background: linear-gradient(to right, #f0f4f8, #e8f0fe);
  border-radius: 12px;
  padding: 16px;
  text-align: center;
}

.qrcode-hint {
  font-size: 14px;
  color: #617589;
  font-weight: 500;
  margin: 0 0 12px 0;
}

.qrcode-container {
  display: flex;
  justify-content: center;
}

.qrcode-image {
  width: 160px;
  height: 160px;
  border-radius: 8px;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  border: 1px solid #e5e7eb;
  object-fit: cover;
}

@media (max-width: 768px) {
  .qrcode-image {
    width: 140px;
    height: 140px;
  }
}
</style>
