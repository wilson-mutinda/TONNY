import apiClient from "@/api/client"
import { defineStore } from "pinia"
import { ref } from "vue"

export interface Category {
    id: number
    name: string
    slug: string
}

export const useCategoryStore = defineStore('categories', () => {
    const categories = ref<Category[]>([])

    const fetchCategories = async () => {
        const res = await apiClient.get('/api/categories/')
        categories.value = res.data
    }

    const addCategory = async (name: string) => {
        const res = await apiClient.post('/api/categories/', { name })
        categories.value.push(res.data)
        return res.data
    }

    const updateCategory = async (id: number, name: string) => {
        const res = await apiClient.patch(`/api/categories/${id}/`, { name })
        const idx = categories.value.findIndex(c => c.id === id)
        if (idx !== -1) categories.value[idx] = res.data
    }

    const deleteCategory = async (id: number) => {
        await apiClient.delete(`/api/categories/${id}/`)
        categories.value = categories.value.filter(c => c.id !== id)
    }

    return {
        categories,
        fetchCategories,
        addCategory,
        updateCategory,
        deleteCategory
    }
})