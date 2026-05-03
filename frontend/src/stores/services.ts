import { ref } from 'vue'

export interface Service {
  id: number
  title: string
  category: string
  image: string
  description: string
  createdAt: string
}

const services = ref<Service[]>([
  {
    id: 1,
    title: 'Logo Design',
    category: 'Branding',
    image: '',
    description: 'Professional logo design service',
    createdAt: '2026-01-01'
  }
])

export const useServicesStore = () => {

  const addService = (service: Service) => {
    services.value.unshift(service)
  }

  const updateService = (id: number, updated: Partial<Service>) => {
    const index = services.value.findIndex(s => s.id === id)

    if (index === -1) return

    const current = services.value[index]!

    services.value[index] = {
      ...current,
      ...updated,
      id: current.id
    }
  }

  const deleteService = (id: number) => {
    services.value = services.value.filter(s => s.id !== id)
  }

  return {
    services,
    addService,
    updateService,
    deleteService
  }
}