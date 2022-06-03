import { fileURLToPath, URL } from 'url';

import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';

// https://vitejs.dev/config/
export default defineConfig({
  base: '/accounts/',
  VITE_APP_ORY_BASE_PATH: 'https://core.prac.io/auth',
  VITE_APP_API_PROTOCOL: 'https',
  VITE_APP_API_DOMAIN: 'core.prac.io/accounts',
  VITE_APP_API_PROTOCOL: 'https',
  plugins: [vue()],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url)),
    },
  },
});
