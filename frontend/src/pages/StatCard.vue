<template>
  <div class="bg-white rounded-lg p-4 shadow hover:shadow-md transition">
    <h4 class="text-gray-500 text-sm">{{ title }}</h4>
    <p class="text-2xl font-bold text-tm-red">{{ value }}</p>
  </div>
</template>

<script setup>
defineProps({
  title: String,
  value: String
})
</script>
