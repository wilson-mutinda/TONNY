<template>
  <div>
    <!-- Header Section -->
    <section class="py-4 bg-tm-red fixed top-0 left-0 w-full z-50">
      <div class="container px-4 mx-auto flex justify-between items-center">
        
        <!-- Logo -->
        <div class="flex items-center gap-2">
          <RouterLink to="/" class="flex items-center gap-2" @click="closeAllMenus">
            <img src="/TM LOGO3.png" alt="logo" width="50">
            <div>
              <p class="text-tm-gray font-semibold text-xl">TMGRAFIXLAB</p>
            </div>
          </RouterLink>
        </div>

        <!-- Desktop Menu -->
        <div class="hidden md:flex gap-6 items-center">

          <!-- Home -->
          <RouterLink
            to="/"
            class="text-white font-bold hover:underline hover:underline-offset-4 transition-all duration-200"
            active-class="underline underline-offset-4"
          >Home</RouterLink>

          <!-- About Dropdown -->
          <div class="relative group">
            <button
              type="button"
              class="text-white font-bold hover:underline hover:underline-offset-4 transition-all duration-200"
            >
              About
            </button>
            <div
              class="absolute left-0 mt-2 w-48 bg-white rounded-lg shadow-xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300 z-40"
            >
              <RouterLink
                to="/about"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >About Us</RouterLink>
              <RouterLink
                to="/blog"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >Blog & Insights</RouterLink>
              <RouterLink
                to="/faqs"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >FAQs</RouterLink>
            </div>
          </div>

          <!-- Services Dropdown Menu -->
          <div class="relative group">
            <button type="button" class="text-white font-bold hover:underline hover:underline-offset-4 transition-all duration-200">
              Services
            </button>
            <div class="absolute left-0 mt-2 w-56 bg-white rounded-lg shadow-xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300 z-40">
              
              <!-- Design Services -->
              <div class="px-4 py-2 text-xs font-semibold uppercase border-b text-tm-red">Design Services</div>
              <RouterLink
                to="/services/logo-design"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >
                Logo Design
              </RouterLink>
              <RouterLink
                to="/services/brand-identity"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >
                Brand Identity
              </RouterLink>
              <RouterLink
                to="/services/social-media-design"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >
                Social Media Design
              </RouterLink>
              <RouterLink
                to="/services/flyer-posters"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >
                Flyers & Posters
              </RouterLink>
              
              <!-- Marketing & Print -->
              <div class="px-4 py-2 text-xs font-semibold text-tm-red uppercase border-b mt-2">Marketing & Print</div>
              <RouterLink
                to="/services/print-marketing"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >
                Print Materials
              </RouterLink>
              <RouterLink
                to="/services/mockups-presentation"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >
                Mockups & Presentation
              </RouterLink>
              
              <!-- Digital Services -->
              <div class="px-4 py-2 text-xs font-semibold text-tm-red uppercase border-b mt-2">Digital</div>
              <RouterLink
                to="/services/web-design"
                class="block px-4 py-3 text-sm text-gray-700 hover:bg-gray-100 transition-colors"
              >
                Web Design
              </RouterLink>
              
              <!-- Quick Links -->
              <div class="border-t border-gray-200 mt-2 pt-2">
                <RouterLink
                  to="/services"
                  class="block px-4 py-3 text-sm font-semibold text-tm-red hover:bg-gray-100 transition-colors"
                >
                  All Services Overview
                </RouterLink>
                <RouterLink
                  to="/services/pricing"
                  class="block px-4 py-3 text-sm font-semibold text-tm-red hover:bg-gray-100 transition-colors"
                >
                  View All Packages
                </RouterLink>
              </div>
            </div>
          </div>

          <!-- Portfolio -->
          <RouterLink
            to="/portfolio"
            class="text-white font-bold hover:underline hover:underline-offset-4 transition-all duration-200"
            active-class="underline underline-offset-4"
          >Portfolio</RouterLink>

          <!-- Contact -->
          <RouterLink
            to="/contact-us"
            class="text-white font-bold hover:underline hover:underline-offset-4 transition-all duration-200"
            active-class="underline underline-offset-4"
          >Contact</RouterLink>

        </div>

        <!-- Mobile Hamburger -->
        <div class="md:hidden relative">
          <button
            @click="toggleMenu"
            class="relative z-50 p-2"
          >
            <img 
              src="/dial-pad.png" 
              alt="menu" 
              width="30"
              class="transition-transform duration-300"
              :class="{ 'rotate-90': isMenuOpen }"
            >
          </button>

          <!-- Mobile Menu Overlay -->
          <div
            v-if="isMenuOpen"
            class="fixed inset-0 bg-black/50 z-40"
            @click="closeAllMenus"
          ></div>

          <!-- Mobile Menu -->
          <div
            v-if="isMenuOpen"
            class="absolute right-0 top-full mt-1 w-64 bg-tm-red shadow-2xl rounded-lg flex flex-col py-4 z-50 max-h-[80vh] overflow-y-auto"
          >
            <!-- Home -->
            <RouterLink
              to="/"
              class="px-6 py-3 text-white font-bold hover:bg-white/10 transition-colors"
              active-class="bg-white/10"
              @click="closeAllMenus"
            >
              Home
            </RouterLink>

            <!-- About Dropdown Mobile -->
            <div class="flex flex-col">
              <button
                @click="toggleContactMenu"
                class="px-6 py-3 text-white font-bold text-left hover:bg-white/10 transition-colors flex justify-between items-center"
              >
                <span>About</span>
                <svg 
                  class="w-4 h-4 transition-transform duration-200" 
                  :class="{ 'rotate-180': isContactOpen }" 
                  fill="none" 
                  stroke="currentColor" 
                  viewBox="0 0 24 24"
                >
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                </svg>
              </button>
              <div v-if="isContactOpen" class="ml-6 mt-1 flex flex-col gap-1">
                <RouterLink 
                  to="/about" 
                  class="px-4 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  About Us
                </RouterLink>
                <RouterLink 
                  to="/blog" 
                  class="px-4 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  Blog & Insights
                </RouterLink>
                <RouterLink 
                  to="/faqs" 
                  class="px-4 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  FAQs
                </RouterLink>
              </div>
            </div>

            <!-- Services Mobile Menu -->
            <div class="flex flex-col">
              <button
                @click="toggleServiceMenu"
                type="button"
                class="px-6 py-3 text-white font-bold text-left hover:bg-white/10 transition-colors flex justify-between items-center"
              >
                <span>Services</span>
                <svg 
                  class="w-4 h-4 transition-transform duration-200" 
                  :class="{ 'rotate-180': isServiceOpen }" 
                  fill="none" 
                  stroke="currentColor" 
                  viewBox="0 0 24 24"
                >
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                </svg>
              </button>
              
              <div v-if="isServiceOpen" class="ml-6 mt-1 flex flex-col gap-1">
                <!-- All Services -->
                <RouterLink
                  to="/services"
                  class="px-4 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors font-semibold"
                  @click="closeAllMenus"
                >
                  All Services Overview
                </RouterLink>
                
                <!-- Design Services -->
                <p class="px-4 pt-3 text-white text-xs font-semibold uppercase opacity-75">Design Services</p>
                <RouterLink
                  to="/services/logo-design"
                  class="px-6 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  Logo Design
                </RouterLink>
                <RouterLink
                  to="/services/brand-identity"
                  class="px-6 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  Brand Identity
                </RouterLink>
                <RouterLink
                  to="/services/social-media-design"
                  class="px-6 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  Social Media Design
                </RouterLink>
                <RouterLink
                  to="/services/flyer-posters"
                  class="px-6 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  Flyers & Posters
                </RouterLink>
                
                <!-- Marketing & Print -->
                <p class="px-4 pt-3 text-white text-xs font-semibold uppercase opacity-75">Marketing & Print</p>
                <RouterLink
                  to="/services/print-marketing"
                  class="px-6 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  Print Materials
                </RouterLink>
                <RouterLink
                  to="/services/mockups-presentation"
                  class="px-6 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  Mockups & Presentation
                </RouterLink>
                
                <!-- Digital Services -->
                <p class="px-4 pt-3 text-white text-xs font-semibold uppercase opacity-75">Digital</p>
                <RouterLink
                  to="/services/web-design"
                  class="px-6 py-2 text-white text-sm hover:bg-white/10 rounded transition-colors"
                  @click="closeAllMenus"
                >
                  Web Design
                </RouterLink>
                
                <!-- Pricing -->
                <div class="border-t border-white/20 mt-3 pt-3">
                  <RouterLink
                    to="/services/pricing"
                    class="px-4 py-2 text-white text-sm font-semibold hover:bg-white/10 rounded transition-colors"
                    @click="closeAllMenus"
                  >
                    Pricing Packages
                  </RouterLink>
                </div>
              </div>
            </div>

            <!-- Portfolio -->
            <RouterLink
              to="/portfolio"
              class="px-6 py-3 text-white font-bold hover:bg-white/10 transition-colors"
              active-class="bg-white/10"
              @click="closeAllMenus"
            >
              Portfolio
            </RouterLink>

            <!-- Contact -->
            <RouterLink
              to="/contact-us"
              class="px-6 py-3 text-white font-bold hover:bg-white/10 transition-colors"
              active-class="bg-white/10"
              @click="closeAllMenus"
            >
              Contact
            </RouterLink>

            <!-- Close Button -->
            <button
              @click="closeAllMenus"
              class="mt-4 mx-6 px-4 py-2 bg-white/20 text-white text-sm font-semibold rounded-lg hover:bg-white/30 transition-colors"
            >
              Close Menu
            </button>
          </div>
        </div>

      </div>
    </section>
    
    <!-- Spacer for fixed header -->
    <div class="h-20"></div>
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
  },
  methods: {
    toggleMenu() {
      this.isMenuOpen = !this.isMenuOpen;
      // Close submenus when closing main menu
      if (!this.isMenuOpen) {
        this.isContactOpen = false;
        this.isServiceOpen = false;
      }
    },
    
    toggleContactMenu() {
      this.isContactOpen = !this.isContactOpen;
      // Close service menu when opening contact menu
      if (this.isContactOpen) {
        this.isServiceOpen = false;
      }
    },
    
    toggleServiceMenu() {
      this.isServiceOpen = !this.isServiceOpen;
      // Close contact menu when opening service menu
      if (this.isServiceOpen) {
        this.isContactOpen = false;
      }
    },
    
    closeAllMenus() {
      this.isMenuOpen = false;
      this.isContactOpen = false;
      this.isServiceOpen = false;
    }
  },
  watch: {
    $route() {
      // Close all menus when route changes
      this.closeAllMenus();
    }
  }
};
</script>

<style scoped>
/* Smooth transitions */
.hover\:underline {
  transition: all 0.2s ease-in-out;
}

/* Scrollbar styling for mobile menu */
.scrollbar-custom::-webkit-scrollbar {
  width: 6px;
}

.scrollbar-custom::-webkit-scrollbar-track {
  background: rgba(255, 255, 255, 0.1);
  border-radius: 3px;
}

.scrollbar-custom::-webkit-scrollbar-thumb {
  background: rgba(255, 255, 255, 0.3);
  border-radius: 3px;
}

.scrollbar-custom::-webkit-scrollbar-thumb:hover {
  background: rgba(255, 255, 255, 0.5);
}
</style>