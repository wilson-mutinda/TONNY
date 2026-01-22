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
                <h3 class="text-tm-red font-medium text-3xl mb-3">Our Creative Services</h3>
                <p class="text-gray-600 text-sm">Comprehensive design solutions tailored to your brand's unique needs</p>
               </div>

               <!-- 3 divs -->
                <div class="grid grid-cols-1 md:grid-cols-3 mt-5 gap-4">

                  <!-- Brand identity -->
                   <div class="bg-white rounded-md p-4 shadow-md">
                    <img src="/diamond.png" alt="diamond" width="30" class="icon-red mb-2">
                    <h3 class="font-semibold text-tm-red mb-2">Branding & Identity Design</h3>
                    <p class="text-gray-600 text-sm mb-2 max-w-sm">Complete brand systems including logos, style guides, and brand strategy</p>

                    <div class="">
                      <div class="flex gap-1 items-center">
                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                        <span class="text-gray-600 text-sm">Logo Design & Redesign</span>
                      </div>
                      <div class="flex gap-1 items-center">
                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                        <span class="text-gray-600 text-sm">Brand Identity Systems (colors, typography, icons, patterns)</span>
                      </div>
                      <div class="flex gap-1 items-center">
                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                        <span class="text-gray-600 text-sm">Brand Style Guides & Guidelines</span>
                      </div>
                      <div class="flex gap-1 items-center">
                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                        <span class="text-gray-600 text-sm">Brand Strategy Consultation</span>
                      </div>
                      <div class="flex gap-1 items-center">
                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                        <span class="text-gray-600 text-sm">Visual Brand Audit (evaluating existing brand visuals)</span>
                      </div>
                    </div>
                   </div>

                   <!-- Digital design -->
                    <div class="bg-white rounded-md p-4 shadow-md">
                      <img src="/monitor.png" alt="monitor" width="30" class="icon-red mb-2">
                      <h3 class="font-semibold text-tm-red mb-2">Graphic & Digital Design</h3>
                      <p class="text-gray-600 text-sm mb-2 max-w-sm">Engaging digital experience for web and mobile platforms.</p>

                      <div class="">
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Social Media Graphics & Templates (Instagram, LinkedIn, TikTok, etc)</span>
                        </div>

                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Digital ads & Banners</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Website Graphics & UI Elements</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Presentation Design (pitch decks, corporate slides)</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Infographics & Data Visualization</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Packaging & Label Design</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Tour & Travel Designs</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Political Designs</span>
                        </div>
                      </div>
                    </div>

                    <!-- Print and marketting -->
                     <div class="bg-white rounded-md p-4 shadow-md">
                      <img src="/printer.png" alt="printer" class="icon-red mb-2" width="30">
                      <h3 class="font-semibold text-tm-red mb-2">Print & Offline Design</h3>
                      <p class="text-gray-600 text-sm mb-2 max-w-sm">Even in digital age, print still matters for premium brands:</p>

                      <div class="">
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Business Cards & Stationary</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Bronchures, Flyers & Posters</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Event & Trade Show Materials</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Booklets & Catalogs</span>
                        </div>
                        <div class="flex gap-1 items-center">
                          <img src="/check(1).png" alt="check" width="20" class="icon-red">
                          <span class="text-gray-600 text-sm">Merchandise & Apparel Design</span>
                        </div>
                      </div>
                     </div>

                     <!-- Copywriting & Content Services -->
                      <div class="bg-white rounded-md p-4 shadow-md">
                        <img src="/copywriting.png" alt="printer" class="icon-red mb-2" width="30">
                        <h3 class="font-semibold text-tm-red mb-2">Copywriting & Content Services</h3>
                        <p class="text-gray-600 text-sm mb-2 max-w-sm">This is your value add design + words = full brand massaging:</p>

                        <div class="">
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">Taglines & Brand Slogans</span>
                          </div>
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">Website Copy (home, about, service pages)</span>
                          </div>
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">Blog Content creation (short posts, design tips, case studies)</span>
                          </div>
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">Social Media Captions & Content Calendars</span>
                          </div>
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">Email Newsletter Copy</span>
                          </div>
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">Product Descriptions (for e-commerce or portfolios)</span>
                          </div>
                        </div>
                      </div>

                      <!-- UX / Digital Strategy -->
                       <div class="bg-white rounded-md p-4 shadow-md">
                        <img src="/ui.png" alt="printer" class="icon-red mb-2" width="30">
                        <h3 class="font-semibold text-tm-red mb-2">UX / Digital Strategy (Optional Premium Services)</h3>
                        <p class="text-gray-600 text-sm mb-2 max-w-sm">If you want to offer higher-value packages:</p>

                        <div class="">
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">Website Wireframes & Mockups</span>
                          </div>
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">User Interface Design for Web or Apps</span>
                          </div>
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">User Experience Audits & Consultation</span>
                          </div>
                          <div class="flex gap-1 items-center">
                            <img src="/check(1).png" alt="check" width="20" class="icon-red">
                            <span class="text-gray-600 text-sm">Conversion-focused Landing Page Design</span>
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
                     <h4 class="text-tm-red font-medium text-3xl text-center mb-2">Our Creative Journey</h4>
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

            <!-- Trustees -->
             <section class="py-8">
              <div class="container mx-auto px-4 bg-white rounded-md p-4">
                <!-- title -->
                 <div class="text-center">
                  <h3 class="text-2xl text-tm-red font-medium">Trusted by Visionary Brands</h3>
                  <p class="text-sm text-gray-600 mt-2">From startups to established enterprises, we deliver designs that make an impact</p>
                 </div>

                 <!-- moving brands -->
                  <div class="mt-6 relative w-full overflow-hidden">
                    <div class="flex gap-6 w-max brand-track">

                      <!-- Brands (first-brands) -->
                       <div class="brand-item bg-black/40 p-4 rounded-md flex items-center justify-center">
                        <img src="/TM LOGO3.png" alt="Brand A" class="w-20 h-20 object-contain">
                       </div>

                       <div class="brand-item bg-tm-red p-4 rounded-md flex items-center justify-center">
                        <img src="/Logo1.png" alt="Brand B" class="w-20 h-20 object-contain">
                       </div>

                       <div class="brand-item bg-tm-red p-4 rounded-full flex items-center justify-center">
                        <img src="/Logo2.png" alt="Brand C" class="w-20 h-20 object-contain">
                       </div>

                       <div class="brand-item bg-black/40 p-4 rounded-full flex items-center justify-center">
                        <img src="/logo7.png" alt="Brand D" class="w-20 h-20 object-contain">
                       </div>

                    </div>
                  </div>

                  <!-- brand testimonials -->
                   <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-4">

                    <!-- first testimonial -->
                     <div class="bg-tm-red rounded-md p-4">
                      <!-- description -->
                       <h3 class="text-white italic mb-2">"TMGrafixLab has transformed our brand identity completely. Their attention to 
                        detail and creative vision exceeded all expectations."
                       </h3>

                       <div class="">
                        <h3 class="font-medium mb-2 text-white">Wilson Kilonzo</h3>
                        <p class="font-medium text-white">CEO, Wilton Technologies LTD</p>
                       </div>
                     </div>

                     <!-- second testimonial -->
                      <div class="bg-tm-red rounded-md p-4">
                        <!-- description -->
                         <h3 class="text-white italic mb-2">"Working with TMGrafixLab was a game-changer. They understood our vision and 
                          delivered designs that perfectly captured our brand essence."</h3>

                          <div class="">
                            <h3 class="font-medium text-white mb-2">Antony Muigai</h3>
                            <p class="font-medium text-white">Founder, TMGrafixLab</p>
                          </div>
                      </div>

                   </div>
              </div>
             </section>

             <!-- Design Process -->
              <section class="py-8">
                <div class="container mx-auto px-4 bg-white rounded-md p-4">
                  <!-- title -->
                   <div class="text-center">
                    <h3 class="font-medium text-3xl text-tm-red mb-4">Our Design Process</h3>
                    <p class="text-gray-700 text-sm mb-4">A structured yet flexible approach ensuring your project's success</p>
                   </div>

                   <!-- design grids -->
                    <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mt-4">

                      <!-- Discovery -->
                       <div class="flex flex-col items-center text-center shadow-md p-4">
                        <div class="bg-tm-red rounded-full w-10 h-10 flex items-center justify-center text-white font-bold mb-2">
                          <h3 class="">1</h3>
                        </div>

                        <div class="">
                          <h4 class="font-semibold mb-2">Discovery</h4>
                          <p class="text-gray-700 text-sm">Deep dive into your brand goals, and target audience</p>
                        </div>
                       </div>

                       <!-- Strategy -->
                        <div class="flex flex-col items-center text-center shadow-md p-4">
                          <div class="bg-tm-red rounded-full w-10 h-10 flex items-center justify-center text-white font-bold mb-2">
                            <h3>2</h3>
                          </div>

                          <div class="">
                            <h4 class="font-semibold mb-2">Strategy</h4>
                            <p class="text-gray-700 text-sm">Develop creative direction and project roadmap</p>
                          </div>
                        </div>

                        <!-- Design -->
                         <div class="flex flex-col items-center text-center shadow-md p-4">
                          <div class="bg-tm-red rounded-full w-10 h-10 flex items-center justify-center text-white font-bold mb-2">
                            <h3>3</h3>
                          </div>

                          <div class="">
                            <h4 class="font-semibold mb-2">Design</h4>
                            <p class="text-gray-700 text-sm">Create, refine, and perfect visual solutions</p>
                          </div>
                         </div>

                         <!-- Delivery -->
                          <div class="flex flex-col items-center text-center shadow-md p-4">
                            <div class="bg-tm-red rounded-full w-10 h-10 flex items-center justify-center text-white font-bold mb-2">
                              <h3>4</h3>
                            </div>

                            <div class="">
                              <h4 class="font-semibold mb-2">Delivery</h4>
                              <p class="text-gray-700 text-sm">Finalize and provide all assets and guidelines</p>
                            </div>
                          </div>
                    </div>

                    <!-- call to actions -->
                     <div class="bg-tm-red text-white text-center pt-8 pb-8 rounded-b-lg">
                      <div class="">
                        <h3 class="font-semibold text-3xl mb-2">Ready to Elevate Your Brand?</h3>
                        <p class="text-sm mb-4 text-center w-full max-w-md mx-auto">Let's collaborate to create designs that not only look amazing but 
                          also drive eral results for your business.
                        </p>
                      </div>

                      <!-- buttons -->
                       <div class="flex items-center justify-center gap-4 mb-4">
                        <!-- <button type="button" class="rounded-full bg-white px-4 py-2 text-tm-red font-medium hover:text-white hover:border hover:bg-tm-red">
                          Start a Project
                        </button> -->
                        <RouterLink
                         to="/contact-us"
                         class="rounded-full bg-white px-4 py-2 text-tm-red font-medium hover:text-white hover:border hover:bg-tm-red">
                          Start a Project
                        </RouterLink>

                        <!-- <button type="button" class="rounded-full border border-white px-4 py-2 font-medium hover:bg-white hover:text-tm-red">
                          Book Free Consultation
                        </button> -->
                        <RouterLink
                         to="/"
                         class="rounded-full border border-white px-4 py-2 font-medium hover:bg-white hover:text-tm-red">
                          Book Free Consultation
                        </RouterLink>
                       </div>

                       <!-- desc -->
                        <h3>Get a response within 24 hours. 
                          No obligation. 100% satisfaction guaranteed
                        </h3>
                     </div>
                </div>
              </section>

            <!-- Contact section -->
             <section class="py-8">
              <div class="container mx-auto px-4">
                <!-- left section and right section -->
                 <div class="grid grid-cols-1 md:grid-cols-2 gap-8 p-4 mt-4">

                  <!-- left section -->
                   <div class="bg-white rounded-md p-4 shadow-md">
                    <!-- title -->
                     <div class="">
                      <h3 class="font-semibold text-2xl mb-4">Let's Connect</h3>
                      <p class="text-sm text-gray-700 mb-4">Have a project in mind? Questions about our services? Reach out 
                        and let's discuss how we can bring your vision to life.
                      </p>
                     </div>

                     <div class="flex flex-col gap-4">

                      <!-- email -->
                      <div class="flex items-center gap-2">
                        <img src="/envelope-solid-full.svg" alt="email" width="30" class="rounded-full">
                        <div class="">
                          <h3 class="font-semibold">Email</h3>
                          <p class="text-gray-700 text-sm">tmgrafixlab@gmail.com</p>
                        </div>
                      </div>

                      <!-- phone -->
                       <div class="flex items-center gap-2">
                        <img src="/phone.png" alt="phone" width="30" class="rounded-full">
                        <div class="">
                          <h3 class="font-semibold">Phone</h3>
                          <p class="text-gray-700 text-sm">+254 7XX XXX XXX</p>
                        </div>
                       </div>

                       <!-- location -->
                        <div class="flex items-center gap-2">
                          <img src="/map-pin-house.png" alt="map" width="30" class="rounded-full">
                          <div class="">
                            <h3 class="font-semibold">Location</h3>
                            <p class="text-gray-700 text-sm">Nairobi, Kenya</p>
                          </div>
                        </div>
                     </div>
                   </div>

                   <!-- right section -->
                    <div class="bg-white rounded-md p-4 shadow-md">
                      <h3 class="font-semibold mb-2">Send a Message</h3>
                      <!-- form -->
                       <form action="" method="post">
                        <div class="flex flex-col md:flex-row gap-4">

                          <!-- name -->
                          <div class="">
                            <label class="block mb-2" for="name">Name</label>
                            <input required class="w-full outline-none border rounded-md p-2 mb-2" type="text" name="name" id="name">
                          </div>

                          <!-- email -->
                           <div class="">
                            <label class="block mb-2" for="email">Email</label>
                            <input required class="w-full outline-none border rounded-md p-2 mb-2" type="email" name="email" id="email">
                           </div>
                        </div>

                        <!-- service interest -->
                         <div class="">
                          <div class="">
                            <label class="block mb-2" for="service">Service Interest</label>
                            <select required class="w-full outline-none border rounded-md p-2 mb-2" name="service" id="service">
                              <option value="">select a Service</option>
                              <option value="social-media-posts">Social Media Posts</option>
                              <option value="travel-flyers">Travel Flyers</option>
                              <option value="political-posters">Political Posters</option>
                              <option value="general-flyers">General Flyers</option>
                              <option value="mockups">Mockups</option>
                              <option value="logos">Logos</option>
                            </select>
                          </div>
                         </div>

                         <!-- message -->
                          <div class="">
                            <div class="">
                              <label class="block mb-2 mt-2" for="message">Message</label>
                              <textarea required class="rounded-md border w-full outline-none p-2 mb-2" name="message" id="message" rows="4"></textarea>
                            </div>
                          </div>

                          <!-- submit button -->
                           <div class="mt-2 text-center bg-tm-red rounded-md px-4 py-2 w-full text-white font-medium">
                            <button>
                              Send Message
                            </button>
                           </div>
                       </form>
                    </div>
                 </div>
              </div>
             </section>

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
import { RouterLink } from 'vue-router';

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

.brand-track {
  animation: brandMarquee 12s linear infinite;
}

.brand-track:hover {
  animation-play-state: paused;
}

@keyframes brandMarquee {
  0% {
    transform: translateX(110vw);
  }
  100% {
    transform: translateX(-100%);
  }
}

</style>

