<script setup lang="ts">
import { ref, onMounted, computed } from 'vue'
import { useProjectsStore } from '@/stores/projects'
import { useCategoryStore } from '@/stores/categories'
import { storeToRefs } from 'pinia'

const projectStore = useProjectsStore()
const categoryStore = useCategoryStore()

// ✅ Use storeToRefs for reactive state
const { projects } = storeToRefs(projectStore)
const { categories } = storeToRefs(categoryStore)

const { fetchProjects, addProject, updateProject, deleteProject } = projectStore
const { fetchCategories } = categoryStore

// UI state
const loading = ref(false)
const showModal = ref(false)
const editingId = ref<number | null>(null)

// Delete confirmation state
const showDeleteModal = ref(false)
const deletingId = ref<number | null>(null)

// Form data
const form = ref({
  title: '',
  category: '',
  imageFile: null as File | null,
  imagePreview: '',
  description: ''
})

// ----- Image URL Helper -----
const getImageUrl = (path: string) => {
  if (!path) return ''
  if (path.startsWith('http')) return path
  const base = import.meta.env.VITE_API_BASE || 'http://localhost:8000'
  return `${base}${path}`
}

// ----- Open / Close Modal -----
const openCreate = () => {
  editingId.value = null
  form.value = { title: '', category: '', imageFile: null, imagePreview: '', description: '' }
  showModal.value = true
}

const openEdit = (project: any) => {
  editingId.value = project.id
  form.value = {
    title: project.title,
    category: project.category,
    imageFile: null,
    imagePreview: getImageUrl(project.image), // ✅ full URL
    description: project.description
  }
  showModal.value = true
}

const closeModal = () => {
  showModal.value = false
}

// ----- Image Handler -----
const handleImage = (e: Event) => {
  const target = e.target as HTMLInputElement
  const file = target.files?.[0]
  if (!file) return

  form.value.imageFile = file

  const reader = new FileReader()
  reader.onload = () => {
    form.value.imagePreview = reader.result as string
  }
  reader.readAsDataURL(file)
}

// ----- Save Project -----
const saveProject = async () => {
  if (!form.value.title.trim() || !form.value.category) {
    alert('Title and category are required.')
    return
  }

  const formData = new FormData()
  formData.append('title', form.value.title)
  formData.append('category', form.value.category)
  formData.append('description', form.value.description)

  if (form.value.imageFile) {
    formData.append('image', form.value.imageFile)
  }

  try {
    if (editingId.value) {
      await updateProject(editingId.value, formData)
    } else {
      if (!form.value.imageFile) {
        alert('Image is required for new projects.')
        return
      }
      await addProject(formData)
    }
    closeModal()
  } catch (error: any) {
    console.error('Save error:', error)
    // Show detailed error from backend if available
    const msg = error.response?.data || 'Failed to save project.'
    alert(JSON.stringify(msg, null, 2))
  }
}

// ----- Delete -----
const confirmDelete = (id: number) => {
  deletingId.value = id
  showDeleteModal.value = true
}

const closeDeleteModal = () => {
  showDeleteModal.value = false
  deletingId.value = null
}

const handleDelete = async () => {
  if (!deletingId.value) return
  try {
    await deleteProject(deletingId.value)
    closeDeleteModal()
  } catch (error) {
    console.error('Delete error:', error)
    alert('Failed to delete project.')
  }
}

// ----- Load Data -----
onMounted(async () => {
  loading.value = true
  try {
    await Promise.all([fetchProjects(), fetchCategories()])
  } catch (e) {
    console.error('Load error:', e)
  } finally {
    loading.value = false
  }
})
</script>

<template>
  <div class="space-y-6">
    <!-- Header -->
    <div class="flex justify-between items-center">
      <div>
        <h1 class="text-2xl font-bold text-gray-800">Projects</h1>
        <p class="text-sm text-gray-500">Manage portfolio projects</p>
      </div>
      <button @click="openCreate" class="bg-tm-red text-white px-4 py-2 rounded-lg hover:bg-red-700 transition">
        + New Project
      </button>
    </div>

    <!-- Loading / Empty -->
    <div v-if="loading" class="text-center py-10 text-gray-500">Loading...</div>
    <div v-else-if="projects.length === 0" class="text-center py-10 text-gray-500">No projects yet. Add one!</div>

    <!-- Grid -->
    <div v-else class="grid md:grid-cols-3 gap-4">
      <div v-for="p in projects" :key="p.id"
           class="bg-white rounded-xl shadow-sm border border-gray-200 p-4 hover:shadow-md transition">
        <img :src="getImageUrl(p.image)" class="rounded-lg h-48 w-full object-cover" :alt="p.title" />
        <h2 class="font-semibold mt-3 text-gray-800">{{ p.title }}</h2>
        <p class="text-sm text-gray-500">{{ p.category_name || 'Uncategorized' }}</p>
        <p class="text-sm text-gray-600 mt-1 line-clamp-2">{{ p.description }}</p>
        <div class="flex gap-2 mt-3">
          <button @click="openEdit(p)" class="px-3 py-1 bg-gray-200 hover:bg-gray-300 rounded text-sm transition">Edit</button>
          <button @click="confirmDelete(p.id)" class="px-3 py-1 bg-red-500 text-white hover:bg-red-600 rounded text-sm transition">Delete</button>
        </div>
      </div>
    </div>

    <!-- Add/Edit Modal -->
    <div v-if="showModal" class="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4"
         @click.self="closeModal">
      <div class="bg-white dark:bg-gray-800 rounded-2xl p-6 w-full max-w-lg shadow-2xl">
        <h2 class="text-xl font-bold text-gray-800 dark:text-white mb-4">
          {{ editingId ? 'Edit Project' : 'New Project' }}
        </h2>

        <form @submit.prevent="saveProject">
          <div class="space-y-3">
            <div>
              <label class="block text-sm font-medium text-gray-700 dark:text-gray-300">Title</label>
              <input v-model="form.title" type="text" required
                     class="w-full p-2 border rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent" />
            </div>

            <div>
              <label class="block text-sm font-medium text-gray-700 dark:text-gray-300">Category</label>
              <select v-model="form.category" required
                      class="w-full p-2 border rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent">
                <option value="">Select a category</option>
                <option v-for="cat in categories" :key="cat.id" :value="cat.id">
                  {{ cat.name }}
                </option>
              </select>
            </div>

            <div>
              <label class="block text-sm font-medium text-gray-700 dark:text-gray-300">Image</label>
              <input type="file" @change="handleImage" accept="image/*"
                     :required="!editingId"
                     class="w-full text-sm" />
              <div v-if="form.imagePreview" class="mt-2 border rounded-lg overflow-hidden">
                <img :src="form.imagePreview" class="w-full max-h-64 object-cover" />
              </div>
            </div>

            <div>
              <label class="block text-sm font-medium text-gray-700 dark:text-gray-300">Description</label>
              <textarea v-model="form.description" rows="3"
                        class="w-full p-2 border rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent"
                        placeholder="Short description"></textarea>
            </div>
          </div>

          <div class="flex justify-end gap-2 mt-6">
            <button type="button" @click="closeModal"
                    class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition">Cancel</button>
            <button type="submit"
                    class="px-4 py-2 bg-tm-red text-white rounded-lg hover:bg-red-700 transition">
              {{ editingId ? 'Update' : 'Create' }}
            </button>
          </div>
        </form>
      </div>
    </div>

    <!-- Delete Confirmation Modal -->
    <div v-if="showDeleteModal" class="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4"
         @click.self="closeDeleteModal">
      <div class="bg-white dark:bg-gray-800 rounded-2xl p-6 w-96 shadow-2xl">
        <h2 class="text-xl font-bold text-gray-800 dark:text-white mb-2">Confirm Delete</h2>
        <p class="text-gray-600 dark:text-gray-300 mb-6">Are you sure you want to delete this project? This action cannot be undone.</p>
        <div class="flex justify-end gap-2">
          <button @click="closeDeleteModal"
                  class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition">Cancel</button>
          <button @click="handleDelete"
                  class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition">Delete</button>
        </div>
      </div>
    </div>
  </div>
</template>