import { useCrud } from '@/composables/useCrud'

export interface Project {
  id: number
  title: string
  category: string
  image: string
  description: string
  createdAt: string
}

const initialProjects: Project[] = [
  {
    id: 1,
    title: 'Political Campaign Poster',
    category: 'Posters',
    image: '/Hon George-01.jpg',
    description: 'High-impact political branding design',
    createdAt: '2026-01-10'
  }
]

export const useProjectsStore = () => {
  const crud = useCrud<Project>(initialProjects)

  return {
    projects: crud.items,
    addProject: crud.add,
    updateProject: crud.update,
    deleteProject: crud.remove
  }
}