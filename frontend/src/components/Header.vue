<template>
  <div>
    <!-- Header Section -->
    <section class="py-4 bg-tm-red fixed top-0 left-0 w-full z-50">
      <div class="container px-2 mx-auto flex justify-between items-center">
        
        <!-- Logo -->
        <div class="flex items-center gap-2">
          <RouterLink to="/" class="flex items-center gap-2">
            <img src="/TM LOGO3.png" alt="logo" width="50">
            <div>
              <p class="text-tm-gray font-semibold text-xl">TMGRAFIXLAB</p>
            </div>
          </RouterLink>
        </div>

        <!-- Desktop Menu -->
<div class="hidden md:flex gap-4 items-center">

  <!-- Home -->
  <RouterLink
    to="/"
    class="text-white font-bold hover:underline hover:underline-offset-4"
    active-class="underline underline-offset-4"
  >Home</RouterLink>

  <!-- About Dropdown -->
  <div class="relative group">
    <button
      type="button"
      class="text-white font-bold hover:underline hover:underline-offset-4"
    >
      About
    </button>
    <div
      class="absolute left-0 mt-2 w-48 bg-white rounded-md shadow-lg opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 z-40"
    >
      <RouterLink
        to="/about"
        class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
      >About Us</RouterLink>
      <RouterLink
        to="/blog"
        class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
      >Blog & Insights</RouterLink>
      <RouterLink
        to="/faqs"
        class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
      >FAQs</RouterLink>
    </div>
  </div>

  <!-- Services -->
  <div class="relative group">
    <button type="button" class="text-white font-bold hover:underline hover:underline-offset-4">
      Services
    </button>
    <div class="absolute left-0 mt-2 w-48 bg-white rounded-md shadow-lg opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 z-40">
      <RouterLink
        to="/services" 
        class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
        All Services
      </RouterLink>
      <RouterLink
        to="/services/brand-design"
        class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
        Brand Design
      </RouterLink>
      <RouterLink
        to="/services/social-media"
        class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
        Social Media
      </RouterLink>
      <RouterLink
        to="/services/web-design"
        class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
        Web Design
      </RouterLink>
      <RouterLink
        to="/services/pricing"
        class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
        Pricing Packages
      </RouterLink>
    </div>
  </div>

  <!-- Portfolio -->
  <RouterLink
    to="/portfolio"
    class="text-white font-bold hover:underline hover:underline-offset-4"
    active-class="underline underline-offset-4"
  >Portfolio</RouterLink>

  <!-- Contact -->
  <RouterLink
    to="/contact-us"
    class="text-white font-bold hover:underline hover:underline-offset-4"
    active-class="underline underline-offset-4"
  >Contact</RouterLink>

</div>

        <!-- Mobile Hamburger -->
        <div class="md:hidden relative">
          <button
            @click="isMenuOpen = !isMenuOpen"
            class="relative z-50 p-2"
          >
            <img src="/dial-pad.png" alt="menu" width="30">
          </button>

          <!-- Mobile Menu -->
          <div
            v-if="isMenuOpen"
            class="absolute right-0 mt-2 w-56 bg-tm-red shadow-lg rounded-md flex flex-col gap-2 px-4 py-4 z-40"
          >
            <RouterLink
              to="/"
              class="text-white font-bold hover:underline hover:underline-offset-4"
              active-class="underline underline-offset-4"
            >Home</RouterLink>

            <!-- About Dropdown Mobile -->
            <div class="flex flex-col">
              <button
                @click="isContactOpen = !isContactOpen"
                class="text-white font-bold text-left hover:underline hover:underline-offset-4"
              >
                About
              </button>
              <div v-if="isContactOpen" class="ml-4 mt-2 flex flex-col gap-2">
                <RouterLink to="/about" class="text-white text-sm hover:underline">About Us</RouterLink>
                <RouterLink to="/faqs" class="text-white text-sm hover:underline">FAQs</RouterLink>
              </div>
            </div>

            <!-- services -->
             <div class="flex flex-col">
              <button
              @click="isServiceOpen = !isServiceOpen"
               type="button"
               class="text-white font-bold text-left hover:underline hover:underline-offset-4">
                Services
              </button>
              <div
               v-if="isServiceOpen" 
               class="ml-4 mt-2 flex flex-col gap-2">
                <RouterLink
                 to=""
                 class="text-white text-sm hover:underline">
                  All Services
                </RouterLink>
                <RouterLink
                 to=""
                 class="text-white text-sm hover:underline">
                  Brand Design
                </RouterLink>
                <RouterLink
                 to=""
                 class="text-white text-sm hover:underline">
                  Social Media
                </RouterLink>
                <RouterLink
                 to=""
                 class="text-white text-sm hover:underline">
                  Web Design
                </RouterLink>
                <RouterLink
                 to=""
                 class="text-white text-sm hover:underline">
                  Pricing Packages
                </RouterLink>
              </div>
             </div>

            <RouterLink
              to="/portfolio"
              class="text-white font-bold hover:underline hover:underline-offset-4"
              active-class="underline underline-offset-4"
            >Portfolio</RouterLink>

            <RouterLink
              to="/blog"
              class="text-white font-bold hover:underline hover:underline-offset-4"
              active-class="underline underline-offset-4"
            >Blog</RouterLink>

            <RouterLink
              to="/contact-us"
              class="text-white font-bold hover:underline hover:underline-offset-4"
              active-class="underline underline-offset-4"
            >Contact</RouterLink>
          </div>
        </div>

      </div>
    </section>
  </div>
</template>

<script>
import { RouterLink } from 'vue-router';

export default {
  components: { RouterLink },
  data() {
    return {
      isMenuOpen: false,
      isContactOpen: false,
      isServiceOpen: false
    };
  }
};
</script>

<style scoped>
/* Optional: smooth underline transition */
.hover:underline {
  transition: all 0.2s ease-in-out;
}
</style>
