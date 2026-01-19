<template>
    <div class="min-h-screen bg-tm-gray">
        <!-- header section -->
         <Header />

          <!-- Marquee -->
           <Marquee />
         <!-- Hero section -->
          <HeroSection />

          <!-- creative services -->
           <section class="py-8">
            <div class="container mx-auto px-4">
              <!-- title -->
               <div class="text-center">
                <h3 class="text-tm-red font-medium text-3xl mb-3">My Creative Services</h3>
                <p class="text-gray-600 text-sm">Comprehensive design solutions tailored to your brand's unique needs</p>
               </div>

               <!-- 3 divs -->
                <div class="grid grid-cols-1 md:grid-cols-3 mt-5 gap-4">

                  <!-- Brand identity -->
                   <div class="bg-white rounded-md p-4 shadow-md">
                    <img src="/diamond.png" alt="diamond" width="30" class="icon-red mb-2">
                    <h3 class="font-semibold mb-2">Brand Identity</h3>
                    <p class="text-gray-600 text-sm mb-2 max-w-sm">Complete brand systems including logos, style guides, and brand strategy</p>

                    <div class="">
                      <div class="flex gap-1 items-center">
                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                        <span class="text-gray-600 text-sm">Logo Design</span>
                      </div>
                      <div class="flex gap-1 items-center">
                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                        <span class="text-gray-600 text-sm">Brand Guidelines</span>
                      </div>
                      <div class="flex gap-1 items-center">
                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                        <span class="text-gray-600 text-sm">Brand Strategy</span>
                      </div>
                    </div>
                   </div>

                   <!-- Digital design -->
                    <div class="bg-white rounded-md p-4 shadow-md">
                      <img src="/monitor.png" alt="monitor" width="30" class="icon-red mb-2">
                      <h3 class="font-semibold mb-2">Digital Design</h3>
                      <p class="text-gray-600 text-sm mb-2 max-w-sm">Engaging digital experience for web and mobile platforms.</p>

                      <div class="">
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">UI/UX Design</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Web Design</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Social Media Graphics</span>
                        </div>
                      </div>
                    </div>

                    <!-- Print and marketting -->
                     <div class="bg-white rounded-md p-4 shadow-md">
                      <img src="/printer.png" alt="printer" class="icon-red mb-2" width="30">
                      <h3 class="font-semibold mb-2">Print & Marketing</h3>
                      <p class="text-gray-600 text-sm mb-2 max-w-sm">Physical and promotional materials that make lasting impressions</p>

                      <div class="">
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Business Cards</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Bronchures & Flyers</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Packaging Design</span>
                        </div>
                      </div>
                     </div>
                </div>
            </div>
           </section>

           <!-- About Teaser Section -->
            <section class="py-12">
                <div class="container mx-auto px-4 bg-gray-200 p-4 rounded-md shadow-md">

                    <!-- title -->
                     <h4 class="text-tm-red font-medium text-3xl text-center mb-2">My Creative Journey</h4>
                     <p class="text-gray-500 text-center max-w-xl mx-auto mb-4">TMGrafixLab is a Nairobi-based
                       creative studio where passion meets innovation. Ideas are transformed into memorable visual experiences.</p>

                     <!-- mission, values, services -->
                      <div class="flex flex-col md:flex-row gap-4">

                        <!-- mission div -->
                         <div class="flex flex-col items-center bg-white rounded-md p-4 space-y-2 shadow-md">
                            <img src="/electricity.png" alt="mission" width="30" class="icon-red">
                            <h3 class="text-center font-semibold text-xl">Mission</h3>
                            <p class="text-center text-sm text-gray-700">Create bold designs that help brands stand out and connect with audiences.</p>
                         </div>

                         <!-- core values div -->
                          <div class="flex flex-col items-center bg-white rounded-md p-4 space-y-2">
                            <img src="/check-mark(1).png" alt="values" width="30" class="icon-red">
                            <h3 class="text-center font-semibold text-xl">Core Values</h3>
                            <p class="text-center text-sm text-gray-700">Creativity, Quality, Integrity, and Innovation drive everything we do.</p>
                          </div>

                          <!-- services div -->
                           <div class="flex flex-col items-center bg-white rounded-md p-4 space-y-2">
                            <img src="/briefcase.png" alt="services" width="30" class="icon-red">
                            <h3 class="text-center font-semibold text-xl">Our Services</h3>
                            <p class="text-center text-sm text-gray-700">Logo design, branding, social media graphics, and more creative solutions.</p>
                           </div>
                      </div>

                      <!-- button -->
                       <div class="text-center mt-3">
                        <!-- button -->
                        <button @click="openAboutPage" class="bg-tm-red p-2 rounded-full text-white font-medium">
                            Discover Full Story
                            <!-- <img src="/right-up.png" alt="up" width="20"> -->
                        </button>

                         <!-- desc -->
                          <p class="text-gray-600 text-sm mt-2">Learn about design philosophy process, and creative team</p>
                       </div>
                </div>
            </section>

           <!-- Featured setion -->
            <Featured />

            <!-- Contact section -->
             <section></section>

             <!-- Footer section -->
              <Footer />
    </div>
</template>

<script>
import Featured from '@/components/Featured.vue';
import Footer from '@/components/Footer.vue';
import Header from '@/components/Header.vue';
import HeroSection from '@/components/HeroSection.vue';
import Marquee from '@/components/Marquee.vue';
import router from '@/router';

    export default {
        components: {
            Header,
            Footer,
            HeroSection,
            Featured,
            Marquee
        },

        data() {
            return {
                isMenuOpen: false,
                currentYear: new Date().getFullYear()
            }
        },

        methods: {
            openAboutPage() {
                router.push('/about')
            }
        }
    }
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

.icon-red {
    filter: brightness(0) saturate(100%) invert(24%) sepia(88%) saturate(5065%) hue-rotate(355deg) brightness(95%) contrast(110%);
}

</style>

