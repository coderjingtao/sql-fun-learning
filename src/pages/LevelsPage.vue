<template>
  <div id="levelsPage">
    <!-- Page Title -->
    <div class="page-header">
      <h1 class="page-title">⚔️ Level Challenges</h1>
      <p class="page-description">Select your challenge level and start your SQL learning journey!</p>
    </div>

    <!-- Level Content -->
    <a-row :gutter="[24, 24]" class="levels-content">
      <!-- Main Levels -->
      <a-col :xs="24" :lg="12">
        <div class="level-section">
          <div class="section-header">
            <h2 class="section-title">
              🎯 Main Levels
              <a-tag color="blue" size="small">Basic Practice</a-tag>
            </h2>
          </div>
          
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
                  <a-tag color="blue" size="small">Main</a-tag>
                  <span class="level-difficulty">⭐ Basic</span>
                </div>
              </div>
              <div class="level-action">
                <a-button type="primary" size="small">Challenge</a-button>
              </div>
            </div>
          </div>
        </div>
      </a-col>

      <!-- Custom Levels -->
      <a-col :xs="24" :lg="12">
        <div class="level-section">
          <div class="section-header">
            <h2 class="section-title">
              🌟 Custom Levels
              <a-tag color="orange" size="small">Advanced Practice</a-tag>
            </h2>
          </div>
          
          <div class="level-grid">
            <div 
              v-for="level in customLevels" 
              :key="level.key"
              class="level-card custom-level"
              @click="goToLevel(level.key)"
            >
              <div class="level-content">
                <h3 class="level-title">{{ level.title }}</h3>
                <div class="level-meta">
                  <a-tag color="orange" size="small">Practice</a-tag>
                  <span class="level-difficulty">{{ getDifficultyText(level.difficulty) }}</span>
                </div>
              </div>
              <div class="level-action">
                <a-button type="primary" size="small">Challenge</a-button>
              </div>
            </div>
          </div>
        </div>
      </a-col>
    </a-row>
  </div>
</template>

<script setup lang="ts">
import { useRouter } from "vue-router";
import mainLevels from "../levels/mainLevels";
import customLevels from "../levels/customLevels";

const router = useRouter();

const goToLevel = (levelKey: string) => {
  router.push(`/learn/${levelKey}`);
};


const getDifficultyText = (difficulty?: number) => {
  switch (difficulty) {
    case 1:
      return '⭐ Easy';
    case 2:
      return '⭐⭐ Medium';
    case 3:
      return '⭐⭐⭐ Hard';
    default:
      return '⭐⭐ Medium';
  }
};
</script>

<style scoped>
#levelsPage {
  max-width: 1400px;
  margin: 0 auto;
  padding: 0 16px;
}

/* Page Title */
.page-header {
  text-align: center;
  margin-bottom: 24px;
  padding: 16px;
  background: linear-gradient(135deg, #1e3a5f 0%, #0b4a7a 100%);
  border-radius: 8px;
}

.page-title {
  font-size: 28px;
  font-weight: bold;
  margin-bottom: 8px;
  color: #ffffff;
}

.page-description {
  font-size: 14px;
  color: rgba(255, 255, 255, 0.85);
  margin: 0;
}

/* Level Content */
.levels-content {
  margin-bottom: 24px;
}

.level-section {
  height: 100%;
}

.section-header {
  margin-bottom: 16px;
  padding: 12px 16px;
  background: linear-gradient(135deg, #1e3a5f 0%, #0b4a7a 100%);
  border-radius: 8px;
}

.section-title {
  display: flex;
  align-items: center;
  gap: 8px;
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 0;
  color: #ffffff;
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
  background: white;
  border: 1px solid #e5e7eb;
  border-radius: 8px;
  cursor: pointer;
  transition: all 0.2s ease;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

.level-card:hover {
  border-color: #3b82f6;
  box-shadow: 0 4px 6px rgba(59, 130, 246, 0.1);
  transform: translateY(-1px);
}

.main-level:hover {
  border-color: #3b82f6;
}

.custom-level:hover {
  border-color: #f59e0b;
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

/* Custom Level Style */
.custom-level .level-icon {
  width: 32px;
  height: 32px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 18px;
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
  #levelsPage {
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
  
  .main-level .level-number,
  .custom-level .level-icon {
    width: 28px;
    height: 28px;
    margin-right: 10px;
  }
  
  .main-level .level-number {
    font-size: 12px;
  }
  
  .custom-level .level-icon {
    font-size: 16px;
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

/* Large Screen Optimization */
@media (min-width: 1200px) {
  .level-grid {
    max-height: 70vh;
    overflow-y: auto;
    padding-right: 8px;
  }
  
  .level-grid::-webkit-scrollbar {
    width: 4px;
  }
  
  .level-grid::-webkit-scrollbar-track {
    background: #f1f1f1;
    border-radius: 2px;
  }
  
  .level-grid::-webkit-scrollbar-thumb {
    background: #c1c1c1;
    border-radius: 2px;
  }
  
  .level-grid::-webkit-scrollbar-thumb:hover {
    background: #a8a8a8;
  }
}

/* Dark Mode */
@media (prefers-color-scheme: dark) {
  .level-card {
    background: #1f2937;
    border-color: #374151;
    color: #f9fafb;
  }

  .level-title {
    color: #f9fafb;
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
