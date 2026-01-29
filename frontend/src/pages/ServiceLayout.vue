<!-- pages/services/ServicesLayout.vue -->
<template>
  <div class="bg-tm-gray min-h-screen">
    
    <!-- Marquee (if you want it on all service pages) -->
    <Marquee />
    
    <!-- This is where child components will render -->
    <router-view></router-view>
  </div>
</template>

<script>
import Header from '@/components/Header.vue';
import Marquee from '@/components/Marquee.vue';
import Footer from '@/components/Footer.vue';

export default {
  components: {
    Header,
    Marquee,
    Footer
  }
}
</script>