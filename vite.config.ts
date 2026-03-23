import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue({
      // 支持 Markdown 文件加载
      include: [/\.vue$/, /\.md$/, /\.db$/],
    }),
  ],
  server: {
    // 修改为你想要的端口
    port: 3000,
    // 如果端口被占用，自动尝试下一个可用端口： true 则端口被占用时报错，false 则自动尝试下一个
    strictPort: false,
  },
});
