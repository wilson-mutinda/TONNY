<script setup lang="ts">
import { useCategoryStore } from '@/stores/categories';
import { storeToRefs } from 'pinia';
import { onMounted, ref } from 'vue';

const store = useCategoryStore()
const { categories } = storeToRefs(store)
const { fetchCategories, addCategory, updateCategory, deleteCategory } = store

const editingId = ref<number | null>(null)
const form = ref({ name: '' })
const showModal = ref(false)
const loading = ref(false)

// Delete confirmation
const showDeleteModal = ref(false)
const deletingId = ref<number | null>(null)

const openCreate = () => {
    editingId.value = null
    form.value = { name: '' }
    showModal.value = true
}

const openEdit = (cat: any) => {
    editingId.value = cat.id
    form.value = { name: cat.name }
    showModal.value = true
}

const closeModal = () => {
    showModal.value = false
}

const saveCategory = async () => {
    if (!form.value.name.trim()) return alert('Name Required')
    try {
        if (editingId.value) {
            await updateCategory(editingId.value, form.value.name)
        } else {
            await addCategory(form.value.name)
        }
        closeModal()
    } catch (err: any) {
        console.error(err)
        // Show actual error from backend
        const errorMsg = err.response?.data?.error || 
                         err.response?.data?.name?.[0] || 
                         err.response?.data?.detail ||
                         JSON.stringify(err.response?.data) ||
                         'Error saving category'
        alert(errorMsg)
    }
}

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
        await deleteCategory(deletingId.value)
        closeDeleteModal()
    } catch (error: any) {
        console.error('Delete error:', error)
        const msg = error.response?.data?.error || 'Failed to delete category.'
        alert(msg)
    }
}

onMounted(async () => {
    loading.value = true
    await fetchCategories()
    loading.value = false
})
</script>

<template>
    <div class="space-y-6">
        <div class="flex justify-between items-center">
            <div>
                <h1 class="text-2xl font-bold text-gray-800">Categories</h1>
                <p class="text-sm text-gray-500">Manage portfolio categories</p>
            </div>
            <button @click="openCreate" class="bg-tm-red text-white px-4 py-2 rounded-lg">
                + New Category
            </button>
        </div>

        <div v-if="loading" class="text-center py-10">Loading...</div>
        <div v-else-if="categories.length === 0" class="text-center py-10 text-gray-500">
            No categories yet.
        </div>
        <div v-else class="bg-white rounded-xl shadow-sm border border-gray-200 overflow-hidden">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Name</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Slug</th>
                        <th class="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase">Actions</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-gray-200">
                    <tr v-for="cat in categories" :key="cat.id">
                        <td class="px-6 py-4">{{ cat.name }}</td>
                        <td class="px-6 py-4 text-sm text-gray-500">{{ cat.slug }}</td>
                        <td class="px-6 py-4 text-right">
                            <button @click="openEdit(cat)" class="text-blue-600 hover:underline mr-3">
                                Edit
                            </button>
                            <button @click="confirmDelete(cat.id)" class="text-red-500 hover:underline">
                                Delete
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Add/Edit Modal -->
        <div v-if="showModal" @click.self="closeModal" class="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
            <div class="bg-white rounded-2xl p-6 w-96">
                <h2 class="text-xl font-bold mb-4">
                    {{ editingId ? 'Edit Category' : 'New Category' }}
                </h2>
                <input v-model="form.name" placeholder="Category name" class="w-full p-2 border rounded-lg mb-4" />
                <div class="flex justify-end gap-2">
                    <button @click="closeModal" class="px-4 py-2 border rounded-lg">Cancel</button>
                    <button @click="saveCategory" class="px-4 py-2 bg-tm-red text-white rounded-lg">Save</button>
                </div>
            </div>
        </div>

        <!-- Delete Confirmation Modal -->
        <div v-if="showDeleteModal" class="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4"
             @click.self="closeDeleteModal">
            <div class="bg-white dark:bg-gray-800 rounded-2xl p-6 w-96 shadow-2xl">
                <h2 class="text-xl font-bold text-gray-800 dark:text-white mb-2">Confirm Delete</h2>
                <p class="text-gray-600 dark:text-gray-300 mb-6">
                    Are you sure you want to delete this category? Projects linked to this category will remain but show as "Uncategorized".
                </p>
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