<template>
    <div class="">
        <!-- header section -->
         <section class="py-4 bg-tm-red mb-4 fixed top-0 left-0 w-full z-50">
            <!-- logo and menu -->
             <div class="container px-2 mx-auto flex justify-between items-center">
                <!-- logo -->
                 <div class="flex items-center gap-2">
                    <RouterLink to="/" class="flex items-center gap-2">
                        <img src="/TM LOGO3.png" alt="logo" width="50">
                        <div class="">
                            <p class="text-tm-gray font-semibold text-xl">TMGRAFIXLAB</p>
                        </div>
                    </RouterLink>
                 </div>

                 <!-- desktop menu -->
                  <div class="md:flex gap-4 hidden">
                    <a class="text-white font-bold" href="/">Home</a>
                    <a class="text-white font-bold" href="/about">About</a>
                    <a class="text-white font-bold" href="/portfolio">Portfolio</a>
                    <a class="text-white font-bold" href="/blog">Blog</a>
                    <a class="text-white font-bold" href="/contact-us">Contact</a>
                  </div>

                  <!-- mobile menu -->
                   <div class="md:hidden">
                    <button @click="isMenuOpen = !isMenuOpen">
                        <img src="/dial-pad.png" alt="menu" width="30">
                    </button>
                   </div>
             </div>
             <!-- md-menu -->
                    <div v-if="isMenuOpen" class="md:hidden flex flex-col bg-tm-red px-4 pb-4 pt-4 gap-2">
                        <a class="text-white font-bold" href="/">Home</a>
                        <a class="text-white font-bold" href="/about">About</a>
                        <a class="text-white font-bold" href="/portfolio">Portfolio</a>
                        <a class="text-white font-bold" href="/blog">Blog</a>
                        <a class="text-white font-bold" href="/contact-us">Contact</a>
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
