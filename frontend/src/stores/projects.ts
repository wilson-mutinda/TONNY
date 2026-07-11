import apiClient from "@/api/client"
import { defineStore } from "pinia"
import { ref } from "vue"

export interface Project {
  id: number
  title: string
  category: number
  category_name: string
  image: string
  description: string
  order: number
  created_at: number
}

export const useProjectsStore = defineStore('projects', () => {
  const projects = ref<Project[]>([])

  const fetchProjects = async () => {
    const res = await apiClient.get('/api/portfolio/')
    projects.value = res.data
  }

  const addProject = async (formData: FormData) => {
    const res = await apiClient.post('/api/portfolio/', formData, {
      headers: {
        'Content-Type': 'multipart/form-data'
      }
    })
    projects.value.unshift(res.data)
  }

  const updateProject = async (id: number, formData: FormData) => {
    const res = await apiClient.patch(`/api/portfolio/${id}/`, formData, {
      headers: {
        'Content-Type': 'multipart/form-data'
      }
    })
    const idx = projects.value.findIndex(p => p.id === id)
    if (idx !== -1) projects.value[idx] = res.data
  }

  const deleteProject = async (id: number) => {
    await apiClient.delete(`/api/portfolio/${id}/`)
    projects.value = projects.value.filter(p => p.id !== id)
  }

  return {
    projects,
    fetchProjects,
    addProject,
    updateProject,
    deleteProject
  }
})
