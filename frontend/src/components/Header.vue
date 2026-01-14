<template>
    <div class="">
        <!-- header section -->
         <section class="py-4 bg-tm-red fixed top-0 left-0 w-full z-50 overflow-x-hidden">
  <div class="max-w-7xl mx-auto px-4 flex items-center justify-between">

    <!-- Logo -->
    <RouterLink to="/" class="flex items-center gap-2">
      <img src="/TM LOGO3.png" alt="logo" class="w-10 sm:w-12">
      <p class="text-tm-gray font-semibold text-lg sm:text-xl whitespace-nowrap">
        TMGRAFIXLAB
      </p>
    </RouterLink>

    <!-- Desktop Menu -->
    <div class="hidden md:flex gap-4">
      <RouterLink class="text-white font-bold" to="/">Home</RouterLink>
      <RouterLink class="text-white font-bold" to="/about">About</RouterLink>
      <RouterLink class="text-white font-bold" to="/portfolio">Portfolio</RouterLink>
      <RouterLink class="text-white font-bold" to="/blog">Blog</RouterLink>
      <RouterLink class="text-white font-bold" to="/contact-us">Contact</RouterLink>
    </div>

    <!-- Mobile Button -->
    <div class="md:hidden flex-shrink-0">
      <button @click="isMenuOpen = !isMenuOpen">
        <img src="/dial-pad.png" alt="menu" class="w-7">
      </button>
    </div>
  </div>

  <!-- Mobile Menu -->
  <div
    v-if="isMenuOpen"
    class="md:hidden flex flex-col bg-tm-red px-4 pb-4 gap-2"
  >
    <RouterLink to="/" @click="isMenuOpen=false" class="text-white font-bold">Home</RouterLink>
    <RouterLink to="/about" @click="isMenuOpen=false" class="text-white font-bold">About</RouterLink>
    <RouterLink to="/portfolio" @click="isMenuOpen=false" class="text-white font-bold">Portfolio</RouterLink>
    <RouterLink to="/blog" @click="isMenuOpen=false" class="text-white font-bold">Blog</RouterLink>
    <RouterLink to="/contact-us" @click="isMenuOpen=false" class="text-white font-bold">Contact</RouterLink>
  </div>
</section>

    </div>
</template>

<script>
import { RouterLink } from 'vue-router';

    export default {
        data() {
            return {
                isMenuOpen: false
            }
        }
    }
</script>
