<script setup lang="ts">
import { useRoute } from 'vue-router'

defineProps<{
  open: boolean
}>()

const route = useRoute()

const links = [
  { name: 'Dashboard', path: '/admin/dashboard', icon: '🏠' },
  { name: 'Projects', path: '/admin/projects', icon: '🖼️' },
  { name: 'Categories', path: '/admin/categories', icon: '🏷️' },
  { name: 'Services', path: '/admin/services', icon: '🧩' },
  { name: 'Testimonials', path: '/admin/testimonials', icon: '💬' },
  { name: 'Messages', path: '/admin/messages', icon: '📩' },
  { name: 'Settings', path: '/admin/settings', icon: '⚙️' }
]
</script>

<template>
  <aside
    :class="[
      'h-screen flex flex-col bg-white dark:bg-tm-dark-surface border-r border-gray-200 dark:border-gray-800 shadow-sm transition-all duration-300 ease-in-out',
      open ? 'w-64' : 'w-20'
    ]"
  >

    <!-- LOGO -->
    <div class="flex items-center h-16 px-4 border-b border-gray-200 dark:border-gray-800">
      <div class="flex items-center gap-3 overflow-hidden">

        <!-- Logo Icon -->
        <div class="w-10 h-10 flex items-center justify-center rounded-xl bg-[var(--tm-accent)] text-white font-bold">
          GL
        </div>

        <!-- Logo Text -->
        <transition name="fade-slide">
          <span
            v-if="open"
            class="text-lg font-semibold whitespace-nowrap"
          >
            GrafixLab CMS
          </span>
        </transition>

      </div>
    </div>

    <!-- NAV -->
    <nav class="flex-1 px-3 py-4 space-y-1">

      <router-link
        v-for="link in links"
        :key="link.path"
        :to="link.path"
        class="group relative flex items-center gap-3 px-3 py-2 rounded-xl transition-all duration-200"
        :class="[
          route.path === link.path
            ? 'bg-[var(--tm-accent)] text-white shadow-sm'
            : 'text-gray-600 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-800'
        ]"
      >

        <!-- Active Indicator -->
        <span
          v-if="route.path === link.path"
          class="absolute left-0 top-1/2 -translate-y-1/2 w-1.5 h-6 bg-white rounded-r"
        ></span>

        <!-- Icon -->
        <span class="text-lg transition-transform group-hover:scale-110">
          {{ link.icon }}
        </span>

        <!-- Label -->
        <transition name="fade-slide">
          <span v-if="open" class="whitespace-nowrap">
            {{ link.name }}
          </span>
        </transition>

        <!-- Tooltip (collapsed mode) -->
        <span
          v-if="!open"
          class="absolute left-16 bg-black text-white text-xs px-2 py-1 rounded opacity-0 group-hover:opacity-100 transition whitespace-nowrap pointer-events-none"
        >
          {{ link.name }}
        </span>

      </router-link>

    </nav>

    <!-- FOOTER -->
    <div class="p-3 border-t border-gray-200 dark:border-gray-800">

      <button
        class="w-full flex items-center gap-3 px-3 py-2 rounded-xl text-red-500 hover:bg-red-50 dark:hover:bg-red-900/20 transition"
      >
        <span>🚪</span>

        <transition name="fade-slide">
          <span v-if="open">Logout</span>
        </transition>
      </button>

    </div>

  </aside>
</template>

<style scoped>
/* Smooth text animation */
.fade-slide-enter-active,
.fade-slide-leave-active {
  transition: all 0.25s ease;
}
.fade-slide-enter-from {
  opacity: 0;
  transform: translateX(-10px);
}
.fade-slide-leave-to {
  opacity: 0;
  transform: translateX(-10px);
}
</style>