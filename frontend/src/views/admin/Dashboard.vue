<script setup lang="ts">
import { ref, onMounted, onBeforeUnmount, computed } from 'vue'
import apiClient from '@/api/client'
import { useProjectsStore } from '@/stores/projects'
import { RouterLink } from 'vue-router'

const projectsStore = useProjectsStore()
const totalMessages = ref(0)
const unreadMessages = ref(0)
const loading = ref(false)

// Real project count from store
const projectsCount = computed(() => projectsStore.projects.length)

let intervalId: number | null = null

// Fetch messages
const fetchMessages = async () => {
  try {
    loading.value = true
    const response = await apiClient.get('/api/admin/enquiries/')
    const enquiries = response.data
    totalMessages.value = enquiries.length
    unreadMessages.value = enquiries.filter((e: any) => !e.is_read).length
  } catch (error) {
    console.error('Failed to fetch messages:', error)
  } finally {
    loading.value = false
  }
}

// Fetch projects (for count)
const fetchProjects = async () => {
  await projectsStore.fetchProjects()
}

const stats = computed(() => [
  { 
    title: 'Projects', 
    value: projectsCount.value, 
    icon: '🖼️', 
    change: '+12%' 
  },
  { 
    title: 'Messages', 
    value: totalMessages.value, 
    icon: '📩', 
    change: `${unreadMessages.value} unread` 
  },
  { 
    title: 'Services', 
    value: 6, // static for now
    icon: '🧩', 
    change: '0%' 
  },
  { 
    title: 'Testimonials', 
    value: 12, // static
    icon: '💬', 
    change: '+3%' 
  }
])

onMounted(async () => {
  await Promise.all([fetchMessages(), fetchProjects()])
  intervalId = window.setInterval(fetchMessages, 5000)
})

onBeforeUnmount(() => {
  if (intervalId) {
    clearInterval(intervalId)
    intervalId = null
  }
})
</script>

<template>
  <div class="space-y-6">
    <div>
      <h1 class="text-2xl font-bold">Dashboard</h1>
      <p class="text-sm text-gray-500">Overview of your creative CMS activity</p>
      <p v-if="loading" class="text-xs text-gray-400 mt-1">Refreshing...</p>
    </div>

    <!-- STATS -->
    <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
      <div v-for="s in stats" :key="s.title"
           class="bg-white dark:bg-gray-800 p-4 rounded-xl shadow-sm">
        <div class="flex items-center justify-between">
          <span class="text-2xl">{{ s.icon }}</span>
          <span class="text-xs text-tm-red font-semibold">{{ s.change }}</span>
        </div>
        <h2 class="text-xl font-bold mt-2">{{ s.value }}</h2>
        <p class="text-sm text-gray-500">{{ s.title }}</p>
      </div>
    </div>

    <!-- QUICK ACTIONS -->
    <div class="bg-white dark:bg-gray-800 p-6 rounded-xl shadow-sm">
      <h2 class="font-semibold mb-4">Quick Actions</h2>
      <div class="flex flex-wrap gap-3">
        <RouterLink to="/admin/projects">
          <button class="px-4 py-2 bg-tm-red text-white rounded-lg">+ New Project</button>
        </RouterLink>
        <RouterLink to="/admin/categories">
          <button class="px-4 py-2 bg-gray-200 dark:bg-gray-700 rounded-lg">Manage Categories</button>
        </RouterLink>
        <RouterLink to="/admin/messages">
          <button class="px-4 py-2 bg-gray-200 dark:bg-gray-700 rounded-lg">
            View Messages ({{ unreadMessages }} unread)
          </button>
        </RouterLink>
        <button class="px-4 py-2 bg-gray-200 dark:bg-gray-700 rounded-lg">Add Service</button>
      </div>
    </div>
  </div>
</template>