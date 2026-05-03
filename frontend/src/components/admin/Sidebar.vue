<script setup lang="ts">
defineProps<{
  open: boolean
}>()

const links = [
  { name: 'Dashboard', path: '/admin/dashboard', icon: '🏠' },
  { name: 'Projects', path: '/admin/projects', icon: '🖼️' },
  { name: 'Services', path: '/admin/services', icon: '🧩' },
  { name: 'Testimonials', path: '/admin/testimonials', icon: '💬' },
  { name: 'Messages', path: '/admin/messages', icon: '📩' },
  { name: 'Settings', path: '/admin/settings', icon: '⚙️' }
]
</script>

<template>
  <aside
    :class="[
      'h-screen bg-white dark:bg-tm-dark-surface shadow-lg transition-all duration-300 flex flex-col',
      open ? 'w-64' : 'w-20'
    ]"
  >

    <div class="p-5 border-b border-gray-200 dark:border-gray-700">
      <h1 class="text-xl font-bold text-[var(--tm-accent)]">
        GrafixLab CMS
      </h1>
    </div>

    <nav class="flex-1 p-3 space-y-2">

      <router-link
        v-for="link in links"
        :key="link.path"
        :to="link.path"
        class="flex items-center gap-3 px-3 py-2 rounded-lg transition"
        active-class="text-white"
        :class="`hover:bg-[var(--tm-accent)] hover:text-white`"
      >
        <span>{{ link.icon }}</span>
        <span v-if="open">{{ link.name }}</span>
      </router-link>

    </nav>

    <div class="p-3 border-t border-gray-200 dark:border-gray-700">
      <button class="text-red-500 hover:text-red-600">
        🚪 Logout
      </button>
    </div>

  </aside>
</template>