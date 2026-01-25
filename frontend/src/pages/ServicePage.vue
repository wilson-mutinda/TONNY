<template>
  <div class="bg-tm-gray min-h-screen">

    <!-- header -->
     <Header />

    <!-- marquee -->
     <Marquee />

     <!-- title -->
      <section class="py-8 pt-32">
        <div class="container px-4 mx-auto">
          <!-- title -->
           <div class="flex flex-col">
            <h3 class="text-center mb-4 text-tm-red font-semibold text-3xl">Our Services</h3>
            <p class="text-gray-600 text-center max-w-2xl mx-auto">Comprehensive design and marketing solutions tailored to help 
              your business stand out, connect with your audience, and grow online.
            </p>
           </div>

           <!-- buttons -->
            <div class="flex items-center gap-4 justify-center mt-4">
              <button type="button" class="bg-tm-red px-4 py-2 rounded-full text-white font-medium hover:text-tm-red hover:border hover:border-tm-red hover:bg-white">
                View packages
              </button>
              
              <RouterLink
               to="/contact-us"
               class="border border-tm-red px-4 py-2 rounded-full text-tm-red font-medium hover:text-white hover:bg-tm-red">
                Get Custom Quote
              </RouterLink>
            </div>
        </div>
      </section>

      <!-- types -->
       <section class="py-6">
        <div class="container px-4 mx-auto grid grid-cols-1 md:grid-cols-3 bg-white shadow-md rounded-md p-4 gap-8">

          <!-- brand identity -->
           <div class="flex flex-col space-y-2 items-center">
            <img src="/find.png" alt="find" width="30" class="icon-red">
            <h3 class="font-semibold">Brand Identity</h3>
            <p class="text-gray-600 text-sm text-center mx-auto max-w-md">Memorable logos, colors, and guidelines that define your business.</p>
           </div>

           <!-- social media -->
            <div class="flex flex-col space-y-2 items-center">
              <img src="/social-media.png" alt="social-media" width="30" class="icon-red">
              <h3 class="font-semibold">Social Media</h3>
              <p class="text-gray-600 text-sm text-center mx-auto max-w-md">Engaging content and management that builds your online community.</p>
            </div>

            <!-- web design -->
             <div class="flex flex-col space-y-2 items-center">
              <img src="/code.png" alt="code" width="30" class="icon-red">
              <h3 class="font-semibold">Web Design</h3>
              <p class="text-gray-600 text-sm text-center mx-auto max-w-md">Stunning, responsive websites that convert visitors into customers.</p>
             </div>
        </div>
       </section>

       <!-- tailored packages -->
        <section class="py-4">
          <div class="container px-4 mx-auto">
            <!-- title -->
             <div class="flex flex-col">
              <h3 class="text-center mb-4 text-2xl font-medium text-tm-red">Tailored Packages</h3>
              <p class="text-center text-gray-600 mx-auto max-w-2xl">
                Choose the perfect solution for your business needs. All packages include 
                professional quality and dedicated support.
              </p>
             </div>

             <!-- packages grid -->
              <div class="grid grid-cols-1 md:grid-cols-3 mt-6 gap-6">

                <!-- brand design -->
                 <div class="bg-white p-4 rounded-md shadow-md">
                  <!-- cost -->
                   <div class="flex items-center justify-between">
                    <div class="rounded-full bg-tm-red px-2 py-1 text-white font-medium">
                      <p>One-Time</p>
                    </div>
                    <p class="font-medium">$150</p>
                   </div>

                   <!-- title -->
                    <div class="mt-4 mb-4">
                      <h3 class="font-bold">Brand Design Package</h3>
                      <p class="text-gray-600 text-sm">Full brand identity for businesses or startups</p>
                    </div>

                    <!-- features -->
                     <div class="">
                      <p class="font-semibold mb-2">Includes:</p>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Logo design (primary + variations)</span>
                      </div>
                      
                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Brand color palette & typography</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Brand style guide / visual system</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Tagline or short copywriting (optional)</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">2-3 rounds of revisions</span>
                      </div>
                     </div>

                     <!-- target -->
                      <div class="mt-4 bg-tm-gray p-4 mb-3">
                        <p class="text-gray-600 text-sm"><b>Perfect for:</b> Startups, rebrands, small businesses launching a new identity</p>
                      </div>

                     <!-- CTA -->
                      <div class="">
                        <button type="button" class="w-full bg-tm-red rounded-md px-4 py-2 text-white font-medium flex items-center justify-center gap-4">
                          <p>Elevate Your Brand</p>
                          <img src="/arrow.png" alt="arrow" width="20" class="invert">
                        </button>
                      </div>
                 </div>

                 <!-- social media poster -->
                 <div class="bg-white p-4 rounded-md shadow-md">
                  <!-- cost -->
                   <div class="flex items-center justify-between">
                    <div class="rounded-full bg-tm-red px-2 py-1 text-white font-medium">
                      <p>Monthly</p>
                    </div>
                    <p class="font-medium">$150/month</p>
                   </div>

                   <!-- title -->
                    <div class="mt-4 mb-4">
                      <h3 class="font-bold">Social Media Poster Design Package</h3>
                      <p class="text-gray-600 text-sm">Custom graphics ready to post on Instagram, LinkedIn, 
                        Facebook, TikTok, etc.
                      </p>
                    </div>

                    <!-- features -->
                     <div class="">
                      <p class="font-semibold mb-2">Includes:</p>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">10-20 custom social media graphics per month</span>
                      </div>
                      
                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Templates for consistent branding</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Optional captions / micro-copywriting</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Optimized for multiple platforms</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">1-2 revisions per graphic</span>
                      </div>
                     </div>

                     <!-- target -->
                      <div class="mt-4 bg-tm-gray p-4 mb-3">
                        <p class="text-gray-600 text-sm"><b>Perfect for:</b> Brands needing consistent, professional social media 
                        visuals woithout spending hours designing.</p>
                      </div>

                     <!-- CTA -->
                      <div class="">
                        <button type="button" class="w-full bg-tm-red rounded-md px-4 py-2 text-white font-medium flex items-center justify-center gap-4">
                          <p>Get Scroll-Stopping Graphics</p>
                          <img src="/arrow.png" alt="arrow" width="20" class="invert">
                        </button>
                      </div>
                 </div>

                 <!-- social media management package -->
                 <div class="bg-white p-4 rounded-md shadow-md">
                  <!-- cost -->
                   <div class="flex items-center justify-between">
                    <div class="rounded-full bg-tm-red px-2 py-1 text-white font-medium">
                      <p>Monthly</p>
                    </div>
                    <p class="font-medium">$230/month</p>
                   </div>

                   <!-- title -->
                    <div class="mt-4 mb-4">
                      <h3 class="font-bold">Social Media Management Package</h3>
                      <p class="text-gray-600 text-sm">Complete social media support - visuals + strategy + posting.</p>
                    </div>

                    <!-- features -->
                     <div class="">
                      <p class="font-semibold mb-2">Includes:</p>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">8-12 posts per month (custom graphics + copy)</span>
                      </div>
                      
                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Monthly content calendar</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Scheduling and posting across platforms</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Analytics & performance / strategy notes</span>
                      </div>
                     </div>

                     <!-- target -->
                      <div class="mt-4 bg-tm-gray p-4 mb-3">
                        <p class="text-gray-600 text-sm"><b>Perfect for:</b> Businesses looking to maintain a strong 
                        presence without hassle of managing content daily.</p>
                      </div>

                     <!-- CTA -->
                      <div class="">
                        <button type="button" class="w-full bg-tm-red rounded-md px-4 py-2 text-white font-medium flex items-center justify-center gap-4">
                          <p>Let us handle your socials</p>
                          <img src="/arrow.png" alt="arrow" width="20" class="invert">
                        </button>
                      </div>
                 </div>

                 <!-- brand design -->
                 <div class="bg-white p-4 rounded-md shadow-md">
                  <!-- cost -->
                   <div class="flex items-center justify-between">
                    <div class="rounded-full bg-tm-red px-2 py-1 text-white font-medium">
                      <p>One-Time</p>
                    </div>
                    <p class="font-medium">$500</p>
                   </div>

                   <!-- title -->
                    <div class="mt-4 mb-4">
                      <h3 class="font-bold">Web Design Package</h3>
                      <p class="text-gray-600 text-sm">Modern, visually appealing, fully branded websites.</p>
                    </div>

                    <!-- features -->
                     <div class="">
                      <p class="font-semibold mb-2">Includes:</p>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Custom design + responsive layout</span>
                      </div>
                      
                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Branding integration (colors, fonts, visuals)</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Basic copywriting for main pages</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">Contact form & CTA setup</span>
                      </div>

                      <div class="flex items-center gap-1">
                        <img src="/check(1).png" alt="check" width="24" class="icon-red">
                        <span class="text-gray-600 text-sm">1-2 rounds of revisions</span>
                      </div>
                     </div>

                     <!-- target -->
                      <div class="mt-4 bg-tm-gray p-4 mb-3">
                        <p class="text-gray-600 text-sm"><b>Perfect for:</b> Businesses needing a professional online presence to convert visitors.</p>
                      </div>

                     <!-- CTA -->
                      <div class="">
                        <button type="button" class="w-full bg-tm-red rounded-md px-4 py-2 text-white font-medium flex items-center justify-center gap-4">
                          <p>Launch Your Stunning Website</p>
                          <img src="/arrow.png" alt="arrow" width="20" class="invert">
                        </button>
                      </div>
                 </div>
              </div>
              
          </div>
        </section>

        <!-- optional add-ons -->
         <section class="py-6">
          <div class="container bg-white px-4 mx-auto p-4 rounded-md shadow-md">
            <!-- title -->
             <div class="mb-4 text-center space-y-2">
              <h3 class="text-tm-red font-medium text-2xl">Optional Add-Ons</h3>
              <p class="text-gray-600">Enhance any package with these additional services</p>
             </div>

             <!-- add-ons grid -->
              <div class="grid grid-cols-1 md:grid-cols-3 gap-6">

                <div class="bg-white shadow-md p-4">
                  <div class="flex items-center justify-between mb-2">
                    <h3 class="text-tm-red font-medium">Extra Revisions</h3>
                    <div class="rounded-full bg-tm-red px-2 py-1 text-white font-medium">
                      <p>+$50-100</p>
                    </div>
                  </div>
                  <!-- desc -->
                   <p class="text-sm text-gray-700">Additional refinement rounds for any project.</p>
                </div>

                <div class="bg-white shadow-md p-4">
                  <div class="flex items-center justify-between mb-2">
                    <h3 class="text-tm-red font-medium">Extra Social Posts</h3>
                    <div class="rounded-full bg-tm-red px-2 py-1 text-white font-medium">
                      <p>+$15-20</p>
                    </div>
                  </div>
                  <!-- desc -->
                   <p class="text-sm text-gray-700">Additional social media posts per month.</p>
                </div>

                <div class="bg-white shadow-md p-4">
                  <div class="flex items-center justify-between mb-2">
                    <h3 class="text-tm-red font-medium">Blog Copywriting</h3>
                    <div class="rounded-full bg-tm-red px-2 py-1 text-white font-medium">
                      <p>+$20-40</p>
                    </div>
                  </div>
                  <!-- desc -->
                   <p class="text-sm text-gray-700">SEO-optimized blog posts for your website.</p>
                </div>

                <div class="bg-white shadow-md p-4">
                  <div class="flex items-center justify-between mb-2">
                    <h3 class="text-tm-red font-medium">Extra Website Pages</h3>
                    <div class="rounded-full bg-tm-red px-2 py-1 text-white font-medium">
                      <p>+$70-100</p>
                    </div>
                  </div>
                  <!-- desc -->
                   <p class="text-sm text-gray-700">Additional pages beyond package scopes.</p>
                </div>

                <div class="bg-white shadow-md p-4">
                  <div class="flex items-center justify-between mb-2">
                    <h3 class="text-tm-red font-medium">Brand Consultation</h3>
                    <div class="rounded-full bg-tm-red px-2 py-1 text-white font-medium">
                      <p>+$30/hr</p>
                    </div>
                  </div>
                  <!-- desc -->
                   <p class="text-sm text-gray-700">Ongoing strategic brand guidance.</p>
                </div>
              </div>
          </div>
         </section>

         <!-- CTA -->
          <section class="py-4">
            <div class="container mx-auto px-4 text-center space-y-2 bg-tm-red rounded-md shadow-md p-4">
              <h3 class="text-white font-medium text-2xl">Need a Custom Solution?</h3>
              <p class="text-white text-sm mx-auto max-w-xl">Our packages are flexible. Contact us to create a custom package tailored 
                exactly to your business needs and budget.
              </p>

              <!-- buttons -->
               <div class="flex items-center justify-center gap-4">

                <RouterLink
                 to="/contact-us"
                 class="bg-white rounded-full px-4 py-2 font-medium hover:bg-tm-red hover:border hover:text-white">
                  Get Custom Quote
                </RouterLink>
                
                <RouterLink
                 to="/portfolio"
                 class="border rounded-full px-4 py-2 font-medium text-white hover:text-black hover:bg-white">
                 View Our Portfolio
                </RouterLink>
               </div>
            </div>
          </section>

          <!-- the process -->
           <section class="py-4">
            <div class="container mx-auto px-4 bg-white p-4">

              <!-- title -->
               <h3 class="text-center font-medium text-2xl text-tm-red">How It Works</h3>

              <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mt-4">
                <div class="flex flex-col">
                  <div class="rounded-full bg-tm-red w-8 h-8 text-center flex items-center justify-center text-white font-semibold mb-2">
                    <p>1</p>
                  </div>
                  <h3 class="font-medium text-tm-red mb-2">Consultation</h3>
                  <p class="text-gray-700">We discuss your goals, audience, and vision</p>
                </div>

                <div class="flex flex-col">
                  <div class="rounded-full bg-tm-red w-8 h-8 text-center flex items-center justify-center text-white font-semibold mb-2">
                    <p>2</p>
                  </div>
                  <h3 class="font-medium text-tm-red mb-2">Proposal</h3>
                  <p class="text-gray-700">We create a tailored package for your needs</p>
                </div>

                <div class="flex flex-col">
                  <div class="rounded-full bg-tm-red w-8 h-8 text-center flex items-center justify-center text-white font-semibold mb-2">
                    <p>3</p>
                  </div>
                  <h3 class="font-medium text-tm-red mb-2">Creation</h3>
                  <p class="text-gray-700">We design, develop, and deliver your project</p>
                </div>

                <div class="flex flex-col">
                  <div class="rounded-full bg-tm-red w-8 h-8 text-center flex items-center justify-center text-white font-semibold mb-2">
                    <p>4</p>
                  </div>
                  <h3 class="font-medium text-tm-red mb-2">Launch</h3>
                  <p class="text-gray-700">We launch and provide ongoing support</p>
                </div>
              </div>
            </div>
           </section>

    <!-- footer -->
     <Footer />

  </div>
</template>

<script>
import Footer from '@/components/Footer.vue';
import Header from '@/components/Header.vue';
import Marquee from '@/components/Marquee.vue';
import { RouterLink } from 'vue-router';

export default {
  components: {
    Header,
    Marquee,
    Footer
  },

  data() {
    return {}
  }

}
</script>

<style scoped>
.icon-red {
  filter: brightness(0) saturate(100%) invert(24%) sepia(88%) saturate(5065%) hue-rotate(355deg) brightness(95%) contrast(110%);
}
</style>
