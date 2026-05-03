import { ref } from 'vue'

const isDark = ref(false)
const accent = ref('#ed1c24')

export const useTheme = () => {

  const initTheme = () => {
    const savedTheme = localStorage.getItem('theme')
    const savedAccent = localStorage.getItem('accent')

    // DARK MODE
    if (savedTheme === 'dark') {
      isDark.value = true
      document.documentElement.classList.add('dark')
    }

    // ACCENT COLOR
    if (savedAccent) {
      accent.value = savedAccent
      document.documentElement.style.setProperty('--tm-accent', savedAccent)
    } else {
      document.documentElement.style.setProperty('--tm-accent', accent.value)
    }
  }

  const toggleTheme = () => {
    isDark.value = !isDark.value

    document.documentElement.classList.toggle('dark', isDark.value)
    localStorage.setItem('theme', isDark.value ? 'dark' : 'light')
  }

  const setAccent = (color: string) => {
    accent.value = color
    document.documentElement.style.setProperty('--tm-accent', color)
    localStorage.setItem('accent', color)
  }

  return {
    isDark,
    accent,
    initTheme,
    toggleTheme,
    setAccent
  }
}