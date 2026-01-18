<template>
    <div class="">
        <!-- Hero section -->
            <section class="mb-4 py-20 pt-24">
            <div class="px-4 mx-auto">
                <div class="relative w-full h-[650px] overflow-hidden rounded-lg">

                <img
                    src="/Background 1.jpg"
                    alt="img1"
                    class="absolute inset-0 w-full h-full object-cover hero-slide slide-1"
                />

                <img
                    src="/Background 2.jpg"
                    alt="img2"
                    class="absolute inset-0 w-full h-full object-cover hero-slide slide-2"
                />

                <img
                    src="/Background 3.jpg"
                    alt="img3"
                    class="absolute inset-0 w-full h-full object-cover hero-slide slide-3"
                />

                <!-- dark overlay -->
                 <div class=""></div>

                 <!-- welcome content -->
                  <div class="absolute inset-0 flex items-center justify-center text-center px-4">
                    <div class="max-w-sm bg-black rounded-md bg-opacity-50 p-4">
                        <h3 class="text-white text-xl font-semibold mb-3">Hi, Welcome to <span class="text-tm-red">TMGRAFIXLAB</span></h3>

                        <p class="text-white text-sm mb-4">A passionate graphic design company creating logos, flyers, posters, and more.</p>

                        <!-- <button type="button" class="bg-tm-red hover:bg-red-700 transition px-6 py-3 rounded-md text-white">
                            View My Work
                        </button> -->
                        <RouterLink to="/portfolio" class="bg-tm-red hover:bg-red-700 transition px-4 py-2 rounded-full text-white">View My Work</RouterLink>
                    </div>
                  </div>

                </div>
            </div>
            </section>
    </div>
</template>

<script>
import { RouterLink, RouterView } from 'vue-router';

    export default {}
</script>

<style scoped>
.hero-slide {
  opacity: 0;
  animation: fadeSlide 9s infinite;
}

.slide-1 {
  animation-delay: 0s;
}
.slide-2 {
  animation-delay: 3s;
}
.slide-3 {
  animation-delay: 6s;
}

@keyframes fadeSlide {
  0% {
    opacity: 0;
  }
  10% {
    opacity: 1;
  }
  30% {
    opacity: 1;
  }
  40% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
</style>
