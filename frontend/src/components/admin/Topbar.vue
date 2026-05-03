<script setup lang="ts">
defineProps<{
  isDark: boolean
}>()

const emit = defineEmits(['toggle-sidebar', 'toggle-theme'])
</script>

<template>
  <header
    class="flex items-center justify-between px-6 py-4
    bg-tm-surface dark:bg-tm-dark-surface
    border-b border-gray-200 dark:border-gray-700"
  >

    <!-- LEFT -->
    <div class="flex items-center gap-3">
      <button
        @click="emit('toggle-sidebar')"
        class="text-xl text-tm-black dark:text-white"
      >
        ☰
      </button>

      <h2 class="font-semibold">
        Admin Panel
      </h2>
    </div>

    <!-- RIGHT -->
    <div class="flex items-center gap-4">

      <!-- DARK MODE -->
      <button
        @click="emit('toggle-theme')"
        class="w-9 h-9 rounded-full flex items-center justify-center
        bg-tm-gray dark:bg-tm-dark-bg"
      >
        {{ isDark ? '🌙' : '☀️' }}
      </button>

      <span class="text-sm">Admin</span>

    </div>

  </header>
</template>