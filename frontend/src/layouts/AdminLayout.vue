<script setup lang="ts">
import { ref, onMounted } from 'vue'
import Sidebar from '@/components/admin/Sidebar.vue'
import Topbar from '@/components/admin/Topbar.vue'
import { useTheme } from '@/composables/useTheme'

const sidebarOpen = ref(true)
const { isDark, toggleTheme, initTheme } = useTheme()

onMounted(() => {
  initTheme()
})

const toggleSidebar = () => {
  sidebarOpen.value = !sidebarOpen.value
}
</script>

<template>
  <div
    class="flex min-h-screen transition-colors duration-300
    bg-tm-gray dark:bg-tm-dark-bg text-tm-black dark:text-white"
  >

    <Sidebar :open="sidebarOpen" />

    <div class="flex-1 flex flex-col">

      <Topbar
        @toggle-sidebar="toggleSidebar"
        :is-dark="isDark"
        @toggle-theme="toggleTheme"
      />

      <main class="p-6 flex-1 overflow-y-auto">
        <router-view />
      </main>

    </div>

  </div>
</template>