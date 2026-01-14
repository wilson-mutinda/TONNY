<template>
  <div class="min-h-screen bg-gray-50 flex">

    <!-- Sidebar (Desktop) -->
    <aside class="hidden md:flex w-64 bg-white border-r">
      <div class="w-full p-4">
        <h2 class="text-tm-red font-bold text-xl mb-8">
          TMGrafixLab
        </h2>

        <nav class="space-y-3">
          <button
            class="block w-full text-left px-3 py-2 rounded-md font-medium transition"
            :class="activePage === 'dashboard'
              ? 'bg-red-50 text-tm-red'
              : 'hover:bg-gray-100'"
            @click="activePage = 'dashboard'"
          >
            Dashboard
          </button>

          <button
            class="block w-full text-left px-3 py-2 rounded-md transition"
            :class="activePage === 'projects'
              ? 'bg-red-50 text-tm-red'
              : 'hover:bg-gray-100'"
            @click="activePage = 'projects'"
          >
            Projects
          </button>

          <button class="block w-full text-left px-3 py-2 rounded-md hover:bg-gray-100">
            Clients
          </button>

          <button class="block w-full text-left px-3 py-2 rounded-md hover:bg-gray-100">
            Messages
          </button>

          <button class="block w-full text-left px-3 py-2 rounded-md hover:bg-gray-100">
            Settings
          </button>
        </nav>
      </div>
    </aside>

    <!-- Main Area -->
    <div class="flex-1 flex flex-col">

      <!-- Topbar -->
      <header class="h-16 bg-white border-b flex items-center justify-between px-4">
        <button class="md:hidden" @click="drawerOpen = true">
          ☰
        </button>

        <h1 class="font-semibold text-lg capitalize">
          {{ activePage }}
        </h1>

        <div class="flex items-center gap-3">
          <span class="text-sm text-gray-500">Admin</span>
          <div class="w-8 h-8 rounded-full bg-tm-red"></div>
        </div>
      </header>

      <!-- Content -->
      <main class="p-6 space-y-6">

        <!-- ================= DASHBOARD ================= -->
        <section v-if="activePage === 'dashboard'" class="space-y-6">

          <!-- Stats -->
          <div class="grid grid-cols-1 md:grid-cols-4 gap-6">
            <div class="bg-white p-5 rounded-lg border">
              <p class="text-sm text-gray-500">Total Projects</p>
              <p class="text-2xl font-bold mt-2 text-tm-red">24</p>
            </div>

            <div class="bg-white p-5 rounded-lg border">
              <p class="text-sm text-gray-500">Active Clients</p>
              <p class="text-2xl font-bold mt-2 text-tm-red">12</p>
            </div>

            <div class="bg-white p-5 rounded-lg border">
              <p class="text-sm text-gray-500">Pending Requests</p>
              <p class="text-2xl font-bold mt-2 text-tm-red">5</p>
            </div>

            <div class="bg-white p-5 rounded-lg border">
              <p class="text-sm text-gray-500">Revenue (KES)</p>
              <p class="text-2xl font-bold mt-2 text-tm-red">120,000</p>
            </div>
          </div>

          <!-- Charts -->
          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="bg-white p-6 rounded-lg border">
              <h3 class="font-semibold mb-3">Projects Growth</h3>
              <div class="h-40 flex items-center justify-center text-gray-400">
                📊 Chart placeholder
              </div>
            </div>

            <div class="bg-white p-6 rounded-lg border">
              <h3 class="font-semibold mb-3">Client Activity</h3>
              <div class="h-40 flex items-center justify-center text-gray-400">
                📈 Chart placeholder
              </div>
            </div>
          </div>

        </section>

        <!-- ================= PROJECTS ================= -->
        <section v-if="activePage === 'projects'" class="bg-white p-6 rounded-lg border">

          <div class="flex justify-between items-center mb-4">
            <h2 class="text-lg font-semibold">Projects</h2>
            <button class="bg-tm-red text-white px-4 py-2 rounded-md">
              + New Project
            </button>
          </div>

          <table class="w-full text-left border-t">
            <thead>
              <tr class="text-sm text-gray-500">
                <th class="py-3">Name</th>
                <th>Status</th>
                <th>Client</th>
                <th>Actions</th>
              </tr>
            </thead>

            <tbody>
              <tr
                v-for="project in projects"
                :key="project.id"
                class="border-t hover:bg-gray-50"
              >
                <td class="py-3">{{ project.name }}</td>
                <td>
                  <span
                    class="px-2 py-1 text-xs rounded-full"
                    :class="project.status === 'Active'
                      ? 'bg-green-100 text-green-600'
                      : 'bg-gray-100 text-gray-600'"
                  >
                    {{ project.status }}
                  </span>
                </td>
                <td>{{ project.client }}</td>
                <td class="space-x-2">
                  <button class="text-blue-600 text-sm">Edit</button>
                  <button class="text-red-600 text-sm">Delete</button>
                </td>
              </tr>
            </tbody>
          </table>

        </section>

      </main>

    </div>

    <!-- Mobile Drawer -->
    <transition name="slide">
      <div
        v-if="drawerOpen"
        class="fixed inset-0 z-50 bg-black bg-opacity-40"
        @click.self="drawerOpen = false"
      >
        <aside class="w-64 bg-white h-full p-4">
          <h2 class="text-tm-red font-bold text-xl mb-8">
            TMGrafixLab
          </h2>

          <nav class="space-y-3">
            <button
              class="block w-full text-left px-3 py-2 rounded-md"
              @click="activePage = 'dashboard'; drawerOpen = false"
            >
              Dashboard
            </button>

            <button
              class="block w-full text-left px-3 py-2 rounded-md"
              @click="activePage = 'projects'; drawerOpen = false"
            >
              Projects
            </button>
          </nav>
        </aside>
      </div>
    </transition>

  </div>
</template>

<script setup>
import { ref } from 'vue'

const drawerOpen = ref(false)
const activePage = ref('dashboard')

const projects = [
  { id: 1, name: 'Brand Identity', status: 'Active', client: 'Nike' },
  { id: 2, name: 'Website UI', status: 'Completed', client: 'Safaricom' },
  { id: 3, name: 'Social Media Kit', status: 'Active', client: 'Coca-Cola' }
]
</script>

<style>
.slide-enter-active,
.slide-leave-active {
  transition: transform 0.3s ease;
}
.slide-enter-from,
.slide-leave-to {
  transform: translateX(-100%);
}
</style>
