<template>
    <div class="py-8">
        <h3 class="text-center text-tm-red text-3xl">Logo Design Services</h3>

        <!-- hero section -->
         <section class="">
            <div class="container px-4 mx-auto mt-4">
                <!-- left and right sections -->
                 <div class="flex flex-col md:flex-row items-center gap-8">

                    <!-- left section -->
                     <div class="">
                        <!-- title -->
                         <div class="mx-auto max-w-3xl text-center">
                            <h3 class="font-semibold text-4xl text-tm-red">Logo Design That Makes Your Brand Memorable</h3>
                            <p class="text-sm text-gray-600 mt-4">Professional logo design that captures your brand's essence 
                                and makes a lasting impression on your audience.
                            </p>
                         </div>

                         <!-- buttons -->
                          <div class="flex items-center justify-center mt-4 gap-4">
                            
                            <a href="#view-pricing" class="rounded-full bg-tm-red px-4 py-2 font-medium text-white hover:text-tm-red hover:bg-transparent ring-1 hover:ring-tm-red">
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
                                <span class="text-gray-600 text-sm">3 Logo Concepts</span>
                             </div>

                             <!-- unlimited revisions -->
                              <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/revision.png" alt="revision" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">Unlimited Revisions</span>
                              </div>

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
                             <h3 class="text-tm-red font-medium mb-2">Get Your Logo Design Qoute</h3>
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

         <!-- logo design samples -->
         <section class="py-4">
            <div class="container mx-auto px-4 mt-6">
                <!-- title -->
                 <div class="flex flex-col text-center mb-6">
                    <h3 class="text-tm-red text-3xl mb-2">Logo Design Examples</h3>
                    <p class="text-gray-600">View some of our recent logo designs;</p>
                 </div>

                 <!-- logo designs -->
                  <div class="grid grid-cols-1 md:grid-cols-3 place-items-center gap-4">
                    <div
                     v-for="(img, index) in visibleLogos" 
                     :key="index" 
                     class="p-4 bg-white w-full flex items-center justify-center flex-col space-y-2 shadow-sm hover:shadow-md">
                        <!-- image wrapper -->
                         <div class="h-40 w-full flex items-center justify-center">
                            <img :src="img.img" alt="" class="max-h-full max-w-full object-contain">
                         </div>
                        <span class="text-sm text-tm-red mt-3 text-center">{{ img.description }}</span>
                    </div>
                  </div>

                  <!-- more button -->
                   <div class="flex justify-center mt-6">
                    <button v-if="visibleCount < logos.length" @click="loadMore" class="px-6 py-2 bg-tm-red text-white rounded hover:bg-red-700 transition">
                        View More
                    </button>
                   </div>
            </div>
         </section>

         <!-- logo design packages -->
         <section id="view-pricing" class="py-4">
            <div class="container mx-auto px-4 mt-6 bg-tm-red rounded-md p-8">
                <!-- title -->
                 <div class="text-center mb-4">
                    <h3 class="text-3xl text-white mb-2">Logo Design Packages</h3>
                    <p class="text-white">Choose the perfect package for your needs;</p>
                 </div>

                 <!-- packages -->
                  <div class="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-md md:max-w-4xl mx-auto">
                    <!-- basic logo -->
                     <div class="bg-white p-4 rounded-md shadow-md">
                        <div class="text-center">
                            <h3 class="text-xl font-medium">Basic Logo</h3>
                            <p class="font-semibold text-2xl mt-2">$50</p>
                            <p class="text-gray-600 mb-4 mt-2">One-time payment</p>
                        </div>
                        <div class="">
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="30" class="icon-red">
                                <span class="text-gray-600 text-sm">1 Logo Concept</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="30" class="icon-red">
                                <span class="text-gray-600 text-sm">2 Revisions</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="30" class="icon-red">
                                <span class="text-gray-600 text-sm">3-Day Delivery</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="30" class="icon-red">
                                <span class="text-gray-600 text-sm">Sourse Files (PNG, JPG)</span>
                            </div>
                        </div>

                        <!-- order button -->
                         <div class="">
                            <button type="button" class="text-center text-white w-full bg-tm-red rounded-md p-2 mt-4">
                                Order Basic Logo
                            </button>
                         </div>
                     </div>
                     <!-- premium logo -->
                      <div class="bg-white rounded-md p-8">
                        <div class="text-center">
                            <h3 class="font-medium text-xl mb-2">Premium Logo</h3>
                            <p class="font-semibold text-2xl mb-2">$150</p>
                            <p class="text-sm text-gray-600">One-time payment</p>
                        </div>
                        <div class="mt-4">
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="30" class="icon-red">
                                <span class="text-sm text-gray-600">3 Logo Concepts</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="30" class="icon-red">
                                <span class="text-sm text-gray-600">Unlimited Revisions</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="30" class="icon-red">
                                <span class="text-sm text-gray-600">5-Day Delivery</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="30" class="icon-red">
                                <span class="text-sm text-gray-600">All Source Files + Brand Guidelines</span>
                            </div>
                            <div class="flex items-center gap-1">
                                <img src="/check(1).png" alt="check" width="30" class="icon-red">
                                <span class="text-sm text-gray-600">Social Media Kit</span>
                            </div>
                        </div>

                        <!-- order logo button -->
                         <div class="">
                            <button type="button" class="bg-tm-red text-center w-full mt-4 rounded-md p-2 text-white">
                                Order Premium Logo
                            </button>
                         </div>
                      </div>
                  </div>
            </div>
         </section>

         <!-- How it works -->
         <section class="py-4">
            <div class="container mx-auto px-4 bg-white rounded-md p-4">
                <!-- title -->
                 <h3 class="text-center text-tm-red font-medium text-2xl mb-4">How It Works</h3>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-7 place-items-center">
                    <!-- 1 -->
                    <div class="">
                        <div class="bg-tm-red rounded-full w-8 h-8 flex items-center justify-center">
                            <p class="text-white font-semibold">1</p>
                        </div>
                        <div class="">
                            <h3 class="font-semibold">Brief</h3>
                            <p class="text-gray-600 text-sm">Tell us about your brand</p>
                        </div>
                    </div>
                    <!-- 2 -->
                     <div class="">
                        <div class="bg-tm-red rounded-full w-8 h-8 flex items-center justify-center">
                            <p class="text-white font-semibold">2</p>
                        </div>
                        <div class="">
                            <h3 class="font-semibold">Design</h3>
                            <p class="text-gray-600 text-sm">We create logo concepts</p>
                        </div>
                    </div>
                    <!-- 3 -->
                     <div class="">
                        <div class="bg-tm-red rounded-full w-8 h-8 flex items-center justify-center">
                            <p class="text-white font-semibold">3</p>
                        </div>
                        <div class="">
                            <h3 class="font-semibold">Revise</h3>
                            <p class="text-gray-600 text-sm">You provide feedback</p>
                        </div>
                    </div>
                    <!-- 4 -->
                     <div class="">
                        <div class="bg-tm-red rounded-full w-8 h-8 flex items-center justify-center">
                            <p class="text-white font-semibold">4</p>
                        </div>
                        <div class="">
                            <h3 class="font-semibold">Deliver</h3>
                            <p class="text-gray-600 text-sm">Get final files</p>
                        </div>
                    </div>
                </div>
            </div>
         </section>

         <!-- CTA  -->
         <section id="get-quotation" class="py-4">
            <div class="container mx-auto px-4 flex flex-col items-center">
                <!-- tttle -->
                 <div class="text-center">
                    <h3 class="text-2xl font-medium text-tm-red">Ready for a Logo That Stands Out?</h3>
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
                            <textarea class="outline-none w-full" rows="4" name="message" id="message" placeholder="Tell us about your logo project..."></textarea>
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
            logos: [
                { img: '/Logo1.png', description: 'Minimalist law company logo' },
                { img: '/Logo2.png', description: 'Bookshop logo' },
                { img: '/Logo3.png', description: 'Luxury Fashion & Design' },
                { img: '/Logo4.png', description: 'Beauty' },
                { img: '/Logo5.png', description: 'Photography' },
                { img: '/Logo6.png', description: 'Sports logo redesign' },
                { img: '/logo7.png', description: 'Farm Product brand' },
                { img: '/Logo8.png', description: 'Internet Provider Brand' }
            ],

            visibleCount: 3
        }
    },
    computed: {
        visibleLogos() {
            return this.logos.slice(0, this.visibleCount)
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
