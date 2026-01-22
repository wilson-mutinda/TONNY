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
                         <h4 class="text-white font-bold mb-4">Quick Links</h4>

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
                                <img src="/Asset 11.png" alt="address" width="25" class="rounded-full p-1">
                                <span class="text-tm-gray">Nairobi</span>
                             </div>

                             <!-- phone -->
                              <div class="flex items-center gap-1">
                                <img src="/phone-solid-full.svg" alt="phone" width="25" class="bg-white rounded-full p-1">
                                <span class="text-tm-gray">+254 748 244 583</span>
                              </div>

                             <!-- whatsapp -->
                              <div class="flex items-center gap-1">
                                <img src="/Asset 8.png" alt="whatsapp" width="25" class="rounded-full p-1">
                                <span class="text-tm-gray">+254 723 777 601</span>
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
                                <button type="button" class="rounded-full p-1">
                                    <img src="/Asset 3.png" alt="fb" class="h-10 w-10">
                                </button>
                                <!-- twitter button -->
                                <button type="button" class="rounded-full p-1">
                                    <img src="/Asset 12.png" alt="x" width="25">
                                </button>
                                <!-- linked in button -->
                                <button type="button" class="rounded-full p-1">
                                    <img src="/Asset 10.png" alt="ln" width="25">
                                </button>
                                <!-- ig button -->
                                <button type="button" class="rounded-full p-1">
                                    <img src="/Asset 4.png" alt="ig" width="25">
                                </button>
                                <!-- tiktok -->
                                 <button type="button" class="rounded-full p-1">
                                    <img src="/Asset 6.png" alt="tiktok" class="h-8 w-8">
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
