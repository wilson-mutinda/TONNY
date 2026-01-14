<template>
    <div class="">
        <!-- footer section -->
              <section class="bg-gradient-to-b from-tm-red to-tm-black py-32 mt-4">
                <!-- container -->
                 <div class="container px-4 mx-auto grid grid-cols-1 md:grid-cols-4 gap-8">
                    <!-- logo -->
                     <div class="">
                        <img src="/TM LOGO2.png" alt="logo" width="330">
                     </div>

                     <!-- quick links -->
                      <div class="">
                        <!-- title -->
                         <h4 class="text-black font-bold mb-4">Quick Links</h4>

                         <!-- qlinks -->
                          <div class="flex flex-col gap-2">
                            <a class="text-white font-semibold" href="/">Home</a>
                            <a class="text-white font-semibold" href="/about">About</a>
                            <a class="text-white font-semibold" href="/portfolio">Portfolio</a>
                            <a class="text-white font-semibold" href="/contact-us">Contact</a>
                          </div>
                      </div>

                      <!-- contact -->
                       <div class="">
                        <!-- title -->
                         <h4 class="text-tm-gray font-bold mb-4">Contact</h4>

                         <!-- contact info -->
                          <div class="flex flex-col gap-3">

                            <!-- address -->
                             <div class="flex items-center gap-1">
                                <img src="/map-pin-house.png" alt="address" width="25" class="bg-white rounded-full p-1">
                                <span class="text-tm-gray">Nairobi</span>
                             </div>

                             <!-- phone -->
                              <div class="flex items-center gap-1">
                                <img src="/phone-solid-full.svg" alt="phone" width="25" class="bg-white rounded-full p-1">
                                <span class="text-tm-gray">+254 7XX XXX XXX</span>
                              </div>

                             <!-- whatsapp -->
                              <div class="flex items-center gap-1">
                                <img src="/whatsapp.png" alt="whatsapp" width="25" class="bg-white rounded-full p-1">
                                <span class="text-tm-gray">+254 7XX XXX XXX</span>
                              </div>

                              <!-- email -->
                               <div class="flex items-center gap-1">
                                <img src="/envelope-solid-full.svg" alt="email" width="25" class="bg-white rounded-full p-1">
                                <span class="text-tm-gray">tmgrafixlab@gmail.com</span>
                               </div>
                          </div>
                       </div>

                       <!-- follow us -->
                        <div class="">

                            <!-- title -->
                             <h4 class="text-tm-gray font-bold mb-4">Follow Us</h4>

                             <!-- follow us buttons -->
                            <div class="flex gap-4">
                                <!-- fb button -->
                                <button type="button" class="bg-white rounded-full p-1">
                                    <img src="/facebook.png" alt="fb" width="25">
                                </button>
                                <!-- twitter button -->
                                <button type="button" class="bg-white rounded-full p-1">
                                    <img src="/twitter.png" alt="x" width="25">
                                </button>
                                <!-- linked in button -->
                                <button type="button" class="bg-white rounded-full p-1">
                                    <img src="/linkedin.png" alt="ln" width="25">
                                </button>
                                <!-- ig button -->
                                <button type="button" class="bg-white rounded-full p-1">
                                    <img src="/instagram.png" alt="ig" width="25">
                                </button>
                            </div>
                        </div>
                 </div>

                 <!-- division -->
                 <div class="bg-tm-gray mt-4 h-px w-full opacity-40"></div>

                 <!-- copyright -->
                  <div class="flex items-center justify-center gap-1 mt-4">
                    <img src="/copyright.png" alt="copyright" width="13" class="invert">
                    <span class="text-tm-gray text-sm">{{currentYear}} TMgrafixlab. All rights reserved.</span>
                  </div>
              </section>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                currentYear: new Date().getFullYear()
            }
        }
    }
</script>
