<script setup lang="ts">
import { onMounted } from 'vue'
import { RouterView } from 'vue-router'

// Run once when the app mounts
onMounted(() => {

  // Force page to start on top on reload
  window.scrollTo({ top: 0, behavior: 'auto'})

  // Disable browser scroll restoration
  if ('scrollRestoration' in history) {
    history.scrollRestoration = 'manual'
  }

  // Disable right-click globally
  document.addEventListener('contextmenu', (e) => e.preventDefault())

  // Disable drag (images, links, etc.)
  document.addEventListener('dragstart', (e) => e.preventDefault())

  // Disable common copy shortcuts, but allow input fields
  document.addEventListener('keydown', (e) => {
    const tag = (e.target as HTMLElement).tagName.toLowerCase()
    if (['input', 'textarea'].includes(tag)) return

    if ((e.ctrlKey || e.metaKey) && ['c', 'x', 'v', 'a', 's', 'u'].includes(e.key.toLowerCase())) {
      e.preventDefault()
    }
  })
})
</script>

<template>
  <RouterView />
</template>
