<template>
    <div class="py-8">
        <h3 class="text-center text-tm-red text-3xl">Mockup Services</h3>

        <!-- hero section -->
         <section class="">
            <div class="container px-4 mx-auto mt-4">
                <!-- left and right sections -->
                 <div class="flex flex-col md:flex-row items-center gap-8">

                    <!-- left section -->
                     <div class="">
                        <!-- title -->
                         <div class="mx-auto max-w-3xl text-center">
                            <h3 class="font-semibold text-4xl text-tm-red">Bring Your Designs to Life with Professional Mockups</h3>
                            <p class="text-sm text-gray-600 mt-4">High-quality mockups that showcase your products, branding, and designs in realistic 
                                settings to impress clients and investors..
                            </p>
                         </div>

                         <!-- buttons -->
                          <div class="flex items-center justify-center mt-4 gap-4">
                            
                            <a href="#design-packages" class="rounded-full bg-tm-red px-4 py-2 font-medium text-white hover:text-tm-red hover:bg-transparent ring-1 hover:ring-tm-red">
                                View Pricing
                            </a>

                            <a href="#get-quotation" class="text-tm-red font-medium px-4 py-2 ring-1 rounded-full ring-tm-red hover:text-white hover:bg-tm-red">
                                Get Quotation
                            </a>
                          </div>

                          <!-- actions -->
                           <div class="grid grid-cols-1 md:grid-cols-3 mt-4 gap-4">

                            <!-- 3 logo concepts -->
                             <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/check(1).png" alt="check" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">Realistic Mockups</span>
                             </div>

                             <!-- unlimited revisions -->
                              <!-- <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/revision.png" alt="revision" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">Unlimited Revisions</span>
                              </div> -->

                             <!-- 5 day delivery -->
                              <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/timing.png" alt="timing" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">5-Day Delivery</span>
                              </div>
                           </div>
                     </div>

                     <!-- right section -->
                      <div class="bg-white rounded-md p-4">
                        <form action="" method="post">
                            <!-- title -->
                             <h3 class="text-tm-red font-medium mb-2">Get Your Mockup Design Qoute</h3>
                             <p class="text-gray-600 text-sm mb-2">Fill this quick form and we'll get back to you within 24 hours with a custom quote.</p>

                             <!-- name -->
                              <div class="">
                                <label class="block mb-2 text-gray-600" for="name">Your Name</label>
                                <input class="rounded-md p-2 ring-1 ring-gray-600 outline-none w-full mb-2" type="text" name="name" id="name">
                              </div>

                              <!-- email -->
                               <div class="">
                                <label class="block mb-2 text-gray-600" for="email">Email Address</label>
                                <input class="rounded-md p-2 ring-1 ring-gray-600 outline-none w-full mb-2" type="email" name="email" id="email">
                               </div>

                               <!-- phone -->
                                <div class="">
                                    <label class="block mb-2 text-gray-600" for="phone">Phone Number</label>
                                    <input class="rounded-md p-2 ring-1 ring-gray-600 outline-none w-full mb-2" type="tel" name="phone" id="phone">
                                </div>

                                <!-- message -->
                                 <div class="">
                                    <label class="block mb-2 text-gray-600" for="message">Tell us about your business</label>
                                    <textarea class="rounded-md p-2 ring-1 ring-gray-600 outline-none w-full mb-2" name="message" id="message" rows="4"></textarea>
                                 </div>

                                 <!-- submit button -->
                                  <div class="">
                                    <button type="button" class="w-full bg-tm-red rounded-md p-2 text-white font-medium">
                                        Request Quote
                                    </button>
                                  </div>

                                  <!-- action -->
                                   <div class="">
                                    <p class="text-center text-sm mt-2 text-gray-600">We'll contact you within 24 hours.</p>
                                   </div>
                        </form>
                      </div>
                 </div>
            </div>
         </section>

         <!-- samples -->
          <section class="py-4">
            <div class="container mx-auto px-4 p-4 mt-6">
                <div class="">
                    <h3 class="text-tm-red font-medium text-center text-2xl mb-2">Mockup Design Examples</h3>
                    <p class="text-gray-600 text-sm text-center mb-6">View some of our mockup designs;</p>
                </div>

                <!-- mockup designs -->
                 <div class="grid grid-cols-1 md:grid-cols-3 place-items-center gap-4">
                    <div
                     v-for="(img, index) in visibleMockups"
                     :key="index" 
                     class="p-4 bg-white w-full h-[360px] flex items-center justify-center flex-col space-y-2 shadow-sm hover:shadow-md">
                        <!-- image wrapper -->
                         <div class="h-64 w-full flex items-center justify-center">
                            <img :src="img.img" :alt="img.img" class="max-h-full max-w-full object-contain">
                         </div>

                         <!-- description -->
                          <p class="text-sm text-tm-red mt-3 text-center">{{ img.description }}</p>
                    </div>
                 </div>

                 <!-- more button -->
                  <div class="flex justify-center mt-6">
                    <button type="button" v-if="visibleCount < mockups.length" @click="loadMore" class="px-6 py-2 bg-tm-red text-white rounded hover:bg-red-700 transition">
                        View More
                    </button>
                  </div>
            </div>
          </section>

          <!-- packages -->
           <section id="design-packages" class="py-4">
            <div class="container mx-auto px-4 bg-tm-red rounded-md p-4">
                <!-- title -->
                 <div class="flex flex-col text-center">
                    <h3 class="text-2xl text-white">Mockup Design Packages</h3>
                    <p class="text-sm text-white mt-2 mb-2">Choose the perfect package for your presentation needs</p>
                 </div>

                 <!-- grids -->
                  <div class="flex flex-col md:flex-row items-stretch mt-8 gap-6 p-2">
                    <!-- left section -->
                     <div class="bg-white p-2 rounded-md shadow-sm hover:shadow-md flex-1">
                        <!-- title -->
                         <div class="text-center space-y-2 mb-4">
                            <h3 class="font-semibold">Basic Mockup</h3>
                            <p class="font-semibold text-tm-red">$20</p>
                            <p class="text-sm">per mockup</p>
                         </div>
                         <!-- desc -->
                          <div class="mb-4">
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="25" class="icon-red">
                                <span class="text-gray-600 text-sm">1 Mockup Design</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="24" class="icon-red">
                                <span class="text-gray-600 text-sm">2 Revisions</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="24" class="icon-red">
                                <span class="text-gray-600 text-sm">2-Day Delivery</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="24" class="icon-red">
                                <span class="text-gray-600 text-sm">High Resolution Files</span>
                            </div>
                          </div>

                          <!-- button -->
                           <div class="">
                            <button type="button" class="text-white bg-tm-red p-2 rounded-md w-full mt-4">
                                Order Basic Mockup
                            </button>
                           </div>
                     </div>
                     <!-- right section -->
                      <div class="bg-white p-2 rounded-md shadow-sm hover:shadow-md flex-1">
                        <!-- title -->
                         <div class="text-center space-y-2 mb-4">
                            <h3 class="font-semibold">Premium Package</h3>
                            <p class="font-semibold text-tm-red">$75</p>
                            <p class="text-sm">for 5 mockups</p>
                         </div>
                         <!-- desc -->
                          <div class="mb-4">
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="24" class="icon-red">
                                <span class="text-gray-600 text-sm">5-Design Mockups</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="24" class="icon-red">
                                <span class="text-gray-600 text-sm">Unlimited Revisions</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="24" class="icon-red">
                                <span class="text-gray-600 text-sm">3-Day Delivery</span>
                            </div>
                          </div>

                          <!-- button -->
                           <div class="">
                            <button type="button" class="text-white bg-tm-red p-2 rounded-md mt-4 w-full">
                                Order Premium Package
                            </button>
                           </div>
                      </div>
                  </div>
            </div>
           </section>

           <!-- how it works -->
            <section class="py-4">
                <div class="container mx-auto px-4 bg-white rounded-md p-4 shadow-md">

                    <!-- title -->
                     <h3 class="text-tm-red font-medium text-2xl text-center">How It Works</h3>
                    <!-- cards -->
                     <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mt-4">

                        <!-- 1 -->
                         <div class="">
                            <div class="bg-tm-red rounded-full h-8 w-8 flex items-center justify-center text-white font-semibold">
                                <p>1</p>
                            </div>
                            <div class="">
                                <h3 class="font-semibold">Submit Request</h3>
                                <p class="text-sm text-gray-600">Send us your design files and requirements</p>
                            </div>
                         </div>

                         <!-- 2 -->
                          <div class="">
                            <div class="bg-tm-red rounded-full h-8 w-8 flex items-center justify-center text-white font-semibold">
                                <p>2</p>
                            </div>
                            <div class="">
                                <h3 class="font-semibold">Mockup Creation</h3>
                                <p class="text-sm text-gray-600">We create realistic mockups of your designs</p>
                            </div>
                          </div>

                          <!-- 3 -->
                           <div class="">
                            <div class="bg-tm-red rounded-full h-8 w-8 flex items-center justify-center text-white font-semibold">
                                <p>3</p>
                            </div>
                            <div class="">
                                <h3 class="font-semibold">Review & Revise</h3>
                                <p class="text-sm text-gray-600">You review and request changes if needed.</p>
                            </div>
                           </div>

                           <!-- 4 -->
                            <div class="">
                                <div class="bg-tm-red rounded-full h-8 w-8 flex items-center justify-center text-white font-semibold">
                                    <p>4</p>
                                </div>
                                <div class="">
                                    <h3 class="font-semibold">Final Delivery</h3>
                                    <p class="text-sm text-gray-600">Receive high-quality mockup files</p>
                                </div>
                            </div>
                     </div>
                </div>
            </section>

            <!-- CTA -->
             <section id="get-quotation" class="py-4">
            <div class="container mx-auto px-4 flex flex-col items-center">
                <!-- tttle -->
                 <div class="text-center">
                    <h3 class="text-2xl font-medium text-tm-red">Ready to Showcase Your Designs?</h3>
                    <p class="text-sm text-gray-600 mt-2">Contact us today for a free consultation and quote.</p>
                 </div>

                 <!-- form -->
                  <div class="bg-white mt-8 rounded-md shadow-md p-8">
                    <form action="" method="post">
                        <!-- title -->
                         <h3 class="text-xl text-tm-red mb-4">Send us a quick message</h3>
                         <!-- name and address -->
                          <div class="flex flex-col md:flex-row mb-4 gap-4">
                            <!-- name -->
                             <div class="ring-1 rounded-md p-2 ring-tm-red">
                                <input class="outline-none" type="text" name="name" id="name" placeholder="Your Name">
                             </div>
                             <!-- address -->
                              <div class="ring-1 rounded-md p-2 ring-tm-red">
                                <input class="outline-none" type="email" name="email" id="email" placeholder="Email Address">
                              </div>
                          </div>
                          <!-- message -->
                           <div class="ring-1 rounded-md p-2 ring-tm-red">
                            <textarea class="outline-none w-full" rows="4" name="message" id="message" placeholder="Tell us about your mockup project..."></textarea>
                           </div>

                           <!-- submit button -->
                            <div class="">
                                <button type="button" class="w-full bg-tm-red rounded-md mt-4 p-4 text-white font-medium">
                                    Send Message & Get Quote
                                </button>
                            </div>
                    </form>
                  </div>
            </div>

            <!-- actions -->
             <div class="grid grid-cols-1 md:grid-cols-3 place-items-center mt-8 max-w-5xl mx-auto gap-4">
                <!-- call -->
                 <div class="bg-tm-red rounded-full px-4 py-1 text-white flex items-center justify-center gap-2">
                    <img src="/phone-solid-full.svg" alt="phone" width="20" class="invert brightness-0">
                    <span>Call: +254 748 244 583</span>
                 </div>
                 <!-- email -->
                  <div class="bg-tm-red rounded-full px-4 py-1 text-white flex items-center justify-center gap-2">
                    <img src="/envelope-solid-full.svg" alt="email" width="20" class="invert brightness-0">
                    <span>Email: tmgrafixlab@gmail.com</span>
                  </div>
                  <!-- response -->
                  <div class="bg-tm-red rounded-full px-4 py-1 text-white flex items-center justify-center gap-2">
                    <img src="/timing.png" alt="hours" width="20" class="invert brightness-0">
                    <span>Response: Within 12 hours</span>
                  </div>                   
             </div>
         </section>
    </div>
</template>

<script>
export default {
    data() {
        return {
            mockups: [
                { img: '/Letterhead_with_Business_Card copy.jpg', description: 'Business card mockup' },
                { img: '/LEAF ADVOCATES MUGS.png', description: 'Design and printing' },
                { img: '/BANNER MCKUP.png', description: 'Banner design and printing' },
                { img: '/FAIBA MKONONI Trifold BROCHURE.png', description: 'Branding stationery mockup' },
                { img: '/TRUCKER HAT DMAX.jpg', description: 'Merchandise design and printing' },
                { img: '/TM MERCH.png', description: 'High quality Tshirt branding' },
                { img: '/Mockup DMAX.jpg', description: 'Wrist bands' },
                { img: '/hood.png', description: 'T-shirt & Hoodie printing' }
            ],

            visibleCount: 3
        }
    },
    computed: {
        visibleMockups() {
            return this.mockups.slice(0, this.visibleCount)
        }
    },
    methods: {
        loadMore() {
            this.visibleCount += 3
        }
    }
}
</script>

<style scoped>
    .icon-red {
        filter: brightness(0) saturate(100%) invert(24%) sepia(88%) saturate(5065%) hue-rotate(355deg) brightness(95%) contrast(110%);
    }
</style>
