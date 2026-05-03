<script setup lang="ts">
import { ref } from 'vue'

const stats = ref([
  { title: 'Projects', value: 24, icon: '🖼️', change: '+12%' },
  { title: 'Messages', value: 18, icon: '📩', change: '+5%' },
  { title: 'Services', value: 6, icon: '🧩', change: '0%' },
  { title: 'Testimonials', value: 12, icon: '💬', change: '+3%' }
])
</script>

<template>
  <div class="space-y-6">

    <!-- HEADER -->
    <div>
      <h1 class="text-2xl font-bold">Dashboard</h1>
      <p class="text-sm text-gray-500 dark:text-gray-300">
        Overview of your creative CMS activity
      </p>
    </div>

    <!-- STATS GRID -->
    <div class="grid grid-cols-1 md:grid-cols-4 gap-4">

      <div
        v-for="s in stats"
        :key="s.title"
        class="bg-tm-surface dark:bg-tm-dark-surface p-4 rounded-xl shadow-sm"
      >
        <div class="flex items-center justify-between">
          <span class="text-2xl">{{ s.icon }}</span>
          <span class="text-xs text-tm-red font-semibold">
            {{ s.change }}
          </span>
        </div>

        <h2 class="text-xl font-bold mt-2">
          {{ s.value }}
        </h2>

        <p class="text-sm text-gray-500 dark:text-gray-300">
          {{ s.title }}
        </p>
      </div>

    </div>

    <!-- QUICK ACTIONS -->
    <div class="bg-white dark:bg-tm-dark-surface p-6 rounded-xl shadow-sm">

      <h2 class="font-semibold mb-4">Quick Actions</h2>

      <div class="flex flex-wrap gap-3">

        <button class="px-4 py-2 bg-tm-red text-white rounded-lg">
          + New Project
        </button>

        <button class="px-4 py-2 bg-gray-100 dark:bg-[#1b3a4a] rounded-lg">
          View Messages
        </button>

        <button class="px-4 py-2 bg-gray-100 dark:bg-[#1b3a4a] rounded-lg">
          Add Service
        </button>

      </div>

    </div>

  </div>
</template>