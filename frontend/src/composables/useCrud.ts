import { ref } from 'vue'

export const useCrud = <T extends { id: number }>(initialData: T[] = []) => {

  // 🔥 IMPORTANT: use shallow typing safety
  const items = ref<T[]>(initialData) as unknown as { value: T[] }

  const add = (item: T) => {
    items.value.unshift(item)
  }

  const update = (id: number, updated: Partial<T>) => {
    const index = items.value.findIndex(i => i.id === id)
    if (index === -1) return

    const current = items.value[index]

    if (!current) return

    items.value[index] = {
      ...current,
      ...updated,
      id: current.id
    }
  }

  const remove = (id: number) => {
    items.value = items.value.filter(i => i.id !== id)
  }

  return {
    items,
    add,
    update,
    remove
  }
}
