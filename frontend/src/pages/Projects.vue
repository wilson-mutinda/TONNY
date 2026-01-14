<template>
  <AdminLayout>
    <div class="flex justify-between items-center mb-6">
      <h2 class="text-2xl font-bold">Projects</h2>
      <button class="bg-tm-red text-white px-4 py-2 rounded-md">
        + Add Project
      </button>
    </div>

    <div class="bg-white rounded-lg shadow overflow-x-auto">
      <table class="w-full text-left">
        <thead class="bg-gray-100">
          <tr>
            <th class="p-3">Name</th>
            <th class="p-3">Client</th>
            <th class="p-3">Status</th>
            <th class="p-3">Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr class="border-t" v-for="project in projects" :key="project.id">
            <td class="p-3">{{ project.name }}</td>
            <td class="p-3">{{ project.client }}</td>
            <td class="p-3">
              <span class="text-green-600 font-medium">{{ project.status }}</span>
            </td>
            <td class="p-3 space-x-2">
              <button class="text-blue-600">Edit</button>
              <button class="text-red-600">Delete</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </AdminLayout>
</template>

<script setup>
import AdminLayout from '@/layouts/AdminLayout.vue'

const projects = [
  { id: 1, name: 'Brand Identity', client: 'Uniscape', status: 'Active' },
  { id: 2, name: 'Website Redesign', client: 'TechHub', status: 'Completed' }
]
</script>
