<script setup lang="ts">
import { ref } from 'vue'
import { useProjectsStore } from '@/stores/projects'

const { projects, deleteProject, updateProject, addProject } = useProjectsStore()

type ProjectForm = {
  title: string
  category: string
  image: string
  description: string
}

const showModal = ref(false)
const editingId = ref<number | null>(null)

const form = ref<ProjectForm>({
  title: '',
  category: '',
  image: '',
  description: ''
})

const openCreate = () => {
  editingId.value = null
  form.value = {
    title: '',
    category: '',
    image: '',
    description: ''
  }
  showModal.value = true
}

const openEdit = (project: any) => {
  editingId.value = project.id

  form.value = {
    title: project.title,
    category: project.category,
    image: project.image,
    description: project.description
  }

  showModal.value = true
}

const saveProject = () => {
  if (editingId.value) {
    updateProject(editingId.value, form.value)
  } else {
    addProject({
      id: Date.now(),
      ...form.value,
      createdAt: new Date().toISOString().slice(0, 10)
    })
  }

  showModal.value = false
}

const handleImage = (e: Event) => {
  const file = (e.target as HTMLInputElement).files?.[0]
  if (!file) return

  const reader = new FileReader()

  reader.onload = () => {
    form.value.image = reader.result as string
  }

  reader.readAsDataURL(file)
}
</script>

<template>
  <div class="space-y-6">

    <!-- HEADER -->
    <div class="flex justify-between items-center">
      <div>
        <h1 class="text-2xl font-bold text-tm-black dark:text-white">
          Projects
        </h1>
        <p class="text-sm text-gray-500">
          Manage portfolio projects
        </p>
      </div>

      <button
        @click="openCreate"
        class="bg-tm-red text-white px-4 py-2 rounded-lg"
      >
        + New Project
      </button>
    </div>

    <!-- GRID -->
    <div class="grid md:grid-cols-3 gap-4">

      <div
        v-for="p in projects"
        :key="p.id"
        class="bg-white dark:bg-tm-dark-surface rounded-xl shadow p-3"
      >
        <img
          :src="p.image"
          class="rounded-lg h-40 w-full object-cover"
        />

        <h2 class="font-semibold mt-2 text-tm-black dark:text-white">
          {{ p.title }}
        </h2>

        <p class="text-sm text-gray-500">
          {{ p.category }}
        </p>

        <div class="flex gap-2 mt-3">
          <button
            @click="openEdit(p)"
            class="px-3 py-1 bg-gray-200 dark:bg-gray-700 rounded"
          >
            Edit
          </button>

          <button
            @click="deleteProject(p.id)"
            class="px-3 py-1 bg-red-500 text-white rounded"
          >
            Delete
          </button>
        </div>
      </div>

    </div>

    <!-- MODAL -->
    <div
      v-if="showModal"
      class="fixed inset-0 bg-black/50 flex items-center justify-center"
    >
      <div class="bg-white dark:bg-tm-dark-surface p-6 rounded-xl w-[420px] space-y-3">

        <h2 class="text-lg font-bold text-tm-black dark:text-white">
          {{ editingId ? 'Edit Project' : 'New Project' }}
        </h2>

        <input v-model="form.title" placeholder="Title" class="input" />
        <input v-model="form.category" placeholder="Category" class="input" />

        <!-- IMAGE UPLOAD -->
        <input type="file" @change="handleImage" class="w-full" />

        <!-- IMAGE PREVIEW (FIXED) -->
        <div v-if="form.image" class="mt-2 border rounded-lg overflow-hidden">
          <img
            :src="form.image"
            class="w-full max-h-64 object-cover"
          />
        </div>

        <textarea
          v-model="form.description"
          placeholder="Description"
          class="input"
        ></textarea>

        <div class="flex justify-end gap-2">
          <button @click="showModal = false" class="px-3 py-1">
            Cancel
          </button>

          <button
            @click="saveProject"
            class="bg-tm-red text-white px-4 py-1 rounded"
          >
            Save
          </button>
        </div>

      </div>
    </div>

  </div>
</template>

<style scoped>
.input {
  width: 100%;
  padding: 10px;
  border-radius: 8px;
  margin-bottom: 10px;
  outline: none;

  background-color: white;
  color: #231f20;
  border: 1px solid #ddd;
}

.dark .input {
  background-color: #0f2a3a;
  color: white;
  border: 1px solid #1f3b4a;
}

.input::placeholder {
  color: #888;
}

.dark .input::placeholder {
  color: #bbb;
}
</style>