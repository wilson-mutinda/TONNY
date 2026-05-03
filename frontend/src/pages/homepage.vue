<template>
    <div class="min-h-screen bg-tm-gray">
        <!-- header section -->
         <Header />

          <!-- Marquee -->
           <Marquee />
         <!-- Hero section -->
          <HeroSection />

         <section class="py-16 bg-[#F9FAFB]">
            <div class="container mx-auto px-6">

              <!-- TITLE -->
              <div 
                class="text-center mb-12"
                data-aos="fade-up"
              >
                <h3 class="text-4xl font-bold text-tm-red mb-3 font-futura">
                  Our Creative Services
                </h3>
                <p class="text-gray-500 max-w-xl mx-auto">
                  Powerful design solutions crafted to elevate your brand and drive real results.
                </p>
              </div>

              <!-- GRID -->
              <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

                <!-- CARD -->
                <div 
                  class="service-card group"
                  data-aos="fade-up"
                  data-aos-delay="100"
                >
                  <img src="/diamond.png" class="icon-red mb-4 w-10 transition-transform group-hover:scale-110">

                  <h3 class="card-title">
                    Branding & Identity
                  </h3>

                  <p class="card-desc">
                    Build a strong and memorable brand presence.
                  </p>

                  <!-- HIDDEN DETAILS -->
                  <div class="card-details">
                    <p>✔ Logo Design</p>
                    <p>✔ Brand Systems</p>
                    <p>✔ Style Guides</p>
                    <p>✔ Brand Strategy</p>
                  </div>
                </div>

                <!-- CARD -->
                <div 
                  class="service-card group"
                  data-aos="fade-up"
                  data-aos-delay="200"
                >
                  <img src="/monitor.png" class="icon-red mb-4 w-10 transition-transform group-hover:scale-110">

                  <h3 class="card-title">
                    Graphic & Digital Design
                  </h3>

                  <p class="card-desc">
                    Stunning visuals for digital platforms.
                  </p>

                  <div class="card-details">
                    <p>✔ Social Media Graphics</p>
                    <p>✔ Ads & Banners</p>
                    <p>✔ UI Elements</p>
                    <p>✔ Presentations</p>
                  </div>
                </div>

                <!-- CARD -->
                <div 
                  class="service-card group"
                  data-aos="fade-up"
                  data-aos-delay="300"
                >
                  <img src="/printer.png" class="icon-red mb-4 w-10 transition-transform group-hover:scale-110">

                  <h3 class="card-title">
                    Print Design
                  </h3>

                  <p class="card-desc">
                    Premium print materials that stand out.
                  </p>

                  <div class="card-details">
                    <p>✔ Business Cards</p>
                    <p>✔ Flyers & Posters</p>
                    <p>✔ Brochures</p>
                    <p>✔ Merchandise</p>
                  </div>
                </div>

                <!-- CARD -->
                <div 
                  class="service-card group"
                  data-aos="fade-up"
                  data-aos-delay="400"
                >
                  <img src="/copywriting.png" class="icon-red mb-4 w-10">

                  <h3 class="card-title">
                    Copywriting
                  </h3>

                  <p class="card-desc">
                    Words that sell and connect with your audience.
                  </p>

                  <div class="card-details">
                    <p>✔ Website Copy</p>
                    <p>✔ Blog Writing</p>
                    <p>✔ Social Media</p>
                    <p>✔ Email Campaigns</p>
                  </div>
                </div>

                <!-- CARD -->
                <div 
                  class="service-card group"
                  data-aos="fade-up"
                  data-aos-delay="500"
                >
                  <img src="/ui.png" class="icon-red mb-4 w-10">

                  <h3 class="card-title">
                    UX / Strategy
                  </h3>

                  <p class="card-desc">
                    Data-driven design for better conversions.
                  </p>

                  <div class="card-details">
                    <p>✔ Wireframes</p>
                    <p>✔ UI Design</p>
                    <p>✔ UX Audits</p>
                    <p>✔ Landing Pages</p>
                  </div>
                </div>

              </div>

            </div>
          </section>

           <section class="py-16 bg-gradient-to-br from-gray-100 via-white to-gray-200">
              <div class="container mx-auto px-6">

                <!-- TITLE -->
                <div 
                  class="text-center mb-12"
                  data-aos="fade-up"
                >
                  <h4 class="text-tm-red font-bold text-4xl mb-3 font-futura">
                    Our Creative Journey
                  </h4>

                  <p class="text-gray-600 max-w-2xl mx-auto">
                    TMGrafixLab is a Nairobi-based creative studio where passion meets innovation. 
                    We transform ideas into powerful visual experiences that leave lasting impressions.
                  </p>
                </div>

                <!-- CARDS -->
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">

                  <!-- MISSION -->
                  <div 
                    class="about-card group"
                    data-aos="fade-up"
                    data-aos-delay="100"
                  >
                    <img src="/electricity.png" class="icon-red w-10 mb-4 transition group-hover:scale-110">

                    <h3 class="card-title">Our Mission</h3>

                    <p class="card-desc">
                      Create bold, meaningful designs that help brands stand out and connect deeply with their audience.
                    </p>
                  </div>

                  <!-- VALUES -->
                  <div 
                    class="about-card group"
                    data-aos="fade-up"
                    data-aos-delay="200"
                  >
                    <img src="/check-mark(1).png" class="icon-red w-10 mb-4 transition group-hover:scale-110">

                    <h3 class="card-title">Core Values</h3>

                    <p class="card-desc">
                      Creativity, quality, integrity, and innovation drive every project we deliver.
                    </p>
                  </div>

                  <!-- SERVICES -->
                  <div 
                    class="about-card group"
                    data-aos="fade-up"
                    data-aos-delay="300"
                  >
                    <img src="/briefcase.png" class="icon-red w-10 mb-4 transition group-hover:scale-110">

                    <h3 class="card-title">What We Do</h3>

                    <p class="card-desc">
                      Branding, digital design, social media creatives, and full visual identity systems.
                    </p>
                  </div>

                </div>

                <!-- CTA -->
                <div 
                  class="text-center mt-12"
                  data-aos="fade-up"
                  data-aos-delay="400"
                >
                  <button 
                    @click="openAboutPage"
                    class="bg-tm-red hover:bg-red-700 transition px-8 py-3 rounded-full text-white font-semibold shadow-lg"
                  >
                    Discover Full Story →
                  </button>

                  <p class="text-gray-500 text-sm mt-3">
                    Learn about our process, philosophy, and creative team
                  </p>
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
                  <h3 class="text-2xl text-tm-red font-medium font-futura">Trusted by Visionary Brands</h3>
                  <p class="text-sm text-gray-600 mt-2">From startups to established enterprises, we deliver designs that make an impact</p>
                 </div>

                 <!-- moving brands -->
                  <div class="mt-6 relative w-full overflow-hidden">
                    <div class="flex gap-6 w-max brand-track">

                      <!-- Brands (first-brands) -->
                       <div class="brand-item p-4 flex items-center justify-center">
                        <img src="/TM LOGO3.png" alt="Brand A" class="w-20 h-20 object-contain">
                       </div>

                       <div class="brand-item p-4 flex items-center justify-center">
                        <img src="/Logo1.png" alt="Brand B" class="w-20 h-20 object-contain">
                       </div>

                       <div class="brand-item p-4 flex items-center justify-center">
                        <img src="/Logo2.png" alt="Brand C" class="w-20 h-20 object-contain">
                       </div>

                       <div class="brand-item p-4 flex items-center justify-center">
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
              <!-- <section class="py-8">
                <div class="container mx-auto px-4 bg-white rounded-md p-4"> -->
                  <!-- title -->
                   <!-- <div class="text-center">
                    <h3 class="font-medium text-3xl text-tm-red mb-4 font-futura">Our Design Process</h3>
                    <p class="text-gray-700 text-sm mb-4">A structured yet flexible approach ensuring your project's success</p>
                   </div> -->

                   <!-- design grids -->
                    <!-- <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mt-4"> -->

                      <!-- Discovery -->
                       <!-- <div class="flex flex-col items-center text-center shadow-md p-4">
                        <div class="bg-tm-red rounded-full w-10 h-10 flex items-center justify-center text-white font-bold mb-2">
                          <h3 class="">1</h3>
                        </div>

                        <div class="">
                          <h4 class="font-semibold mb-2">Discovery</h4>
                          <p class="text-gray-700 text-sm">Deep dive into your brand goals, and target audience</p>
                        </div>
                       </div> -->

                       <!-- Strategy -->
                        <!-- <div class="flex flex-col items-center text-center shadow-md p-4">
                          <div class="bg-tm-red rounded-full w-10 h-10 flex items-center justify-center text-white font-bold mb-2">
                            <h3>2</h3>
                          </div>

                          <div class="">
                            <h4 class="font-semibold mb-2">Strategy</h4>
                            <p class="text-gray-700 text-sm">Develop creative direction and project roadmap</p>
                          </div>
                        </div> -->

                        <!-- Design -->
                         <!-- <div class="flex flex-col items-center text-center shadow-md p-4">
                          <div class="bg-tm-red rounded-full w-10 h-10 flex items-center justify-center text-white font-bold mb-2">
                            <h3>3</h3>
                          </div>

                          <div class="">
                            <h4 class="font-semibold mb-2">Design</h4>
                            <p class="text-gray-700 text-sm">Create, refine, and perfect visual solutions</p>
                          </div>
                         </div> -->

                         <!-- Delivery -->
                          <!-- <div class="flex flex-col items-center text-center shadow-md p-4">
                            <div class="bg-tm-red rounded-full w-10 h-10 flex items-center justify-center text-white font-bold mb-2">
                              <h3>4</h3>
                            </div>

                            <div class="">
                              <h4 class="font-semibold mb-2">Delivery</h4>
                              <p class="text-gray-700 text-sm">Finalize and provide all assets and guidelines</p>
                            </div>
                          </div> -->
                    <!-- </div> -->

                    <!-- call to actions -->
                     <!-- <div class="bg-tm-red text-white text-center pt-8 pb-8 rounded-b-lg">
                      <div class="">
                        <h3 class="font-semibold text-3xl mb-2 font-futura">Ready to Elevate Your Brand?</h3>
                        <p class="text-sm mb-4 text-center w-full max-w-md mx-auto">Let's collaborate to create designs that not only look amazing but 
                          also drive eral results for your business.
                        </p>
                      </div> -->

                      <!-- buttons -->
                       <!-- <div class="flex items-center justify-center gap-4 mb-4"> -->
                        <!-- <button type="button" class="rounded-full bg-white px-4 py-2 text-tm-red font-medium hover:text-white hover:border hover:bg-tm-red">
                          Start a Project
                        </button> -->
                        <!-- <RouterLink
                         to="/contact-us"
                         class="rounded-full bg-white px-4 py-2 text-tm-red font-medium hover:text-white hover:border hover:bg-tm-red">
                          Start a Project
                        </RouterLink> -->

                        <!-- <button type="button" class="rounded-full border border-white px-4 py-2 font-medium hover:bg-white hover:text-tm-red">
                          Book Free Consultation
                        </button> -->
                        <!-- <RouterLink
                         to="/"
                         class="rounded-full border border-white px-4 py-2 font-medium hover:bg-white hover:text-tm-red">
                          Book Free Consultation
                        </RouterLink>
                       </div> -->

                       <!-- desc -->
                        <!-- <h3>Get a response within 24 hours. 
                          No obligation. 100% satisfaction guaranteed
                        </h3>
                     </div>
                </div>
              </section> -->

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
                          <p class="text-gray-700 text-sm">+254 748 244 583</p>
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

.about-card {
  background: rgba(255,255,255,0.85);
  backdrop-filter: blur(10px);
  padding: 30px;
  border-radius: 16px;
  text-align: center;
  box-shadow: 0 10px 30px rgba(0,0,0,0.08);
  transition: all 0.3s ease;
}

.about-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 20px 50px rgba(0,0,0,0.15);
}

.card-title {
  font-size: 20px;
  font-weight: 600;
  color: #d62828;
  margin-bottom: 10px;
}

.card-desc {
  font-size: 14px;
  color: #555;
}

.service-card {
  background: white;
  padding: 28px;
  border-radius: 16px;
  box-shadow: 0 10px 30px rgba(0,0,0,0.08);
  transition: all 0.3s ease;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}

.service-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 20px 50px rgba(0,0,0,0.15);
}

.card-title {
  font-size: 18px;
  font-weight: 600;
  color: #d62828;
  margin-bottom: 10px;
}

.card-desc {
  font-size: 14px;
  color: #666;
}

/* Hidden details */
.card-details {
  margin-top: 12px;
  font-size: 13px;
  color: #555;
  opacity: 0;
  max-height: 0;
  transition: all 0.3s ease;
}

.service-card:hover .card-details {
  opacity: 1;
  max-height: 200px;
}

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

