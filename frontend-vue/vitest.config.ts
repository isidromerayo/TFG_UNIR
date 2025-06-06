import { fileURLToPath } from 'node:url'
import { mergeConfig, defineConfig, configDefaults } from 'vitest/config'
import viteConfig from './vite.config'

export default mergeConfig(
  viteConfig,
  defineConfig({
    test: {
      environment: 'jsdom',
      exclude: [...configDefaults.exclude, 'e2e/**'],
      root: fileURLToPath(new URL('./', import.meta.url)),
      coverage: {
        provider: 'v8',
        reporter: ['text', 'json', 'html'],
        include: ['src/**/*.{js,ts,vue}'],
        exclude: [
          'node_modules/',
          'dist/',
          '**/*.d.ts',
          '**/*.test.ts',
          '**/*.spec.ts',
          '**/types.ts',
          'src/main.ts',
          'src/router/**',
          'src/stores/**',
          'src/assets/**',
          'src/utils/**',
        ],
      },
    },
  }),
)
