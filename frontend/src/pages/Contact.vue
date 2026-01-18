
<template>
    <div class="bg-tm-gray min-h-screen">
        <!-- Header -->
         <Header />

         <!-- Marquee -->
          <Marquee />

         <!-- intro -->
          <section class="py-8 mt-16 pt-12">
            <div class="container mx-auto px-4">

                <!-- title -->
                 <h3 class="text-center text-3xl font-medium mb-2">Get in Touch</h3>

                 <!-- desc -->
                  <p class="text-gray-600 text-center">Have questions/enquiries about our graphic design services? Please share with us below;</p>
            </div>
          </section>

          <!-- info -->
           <section class="py-4">
            <div class="container mx-auto px-4">

                <!-- left & right sections -->
                 <div class="flex justify-center gap-6 flex-col md:flex-row">
                    <!-- left section -->
                     <div class="">

                        <!-- general inquiries div -->
                         <div class="bg-white p-4 rounded-lg border-l-2 border-tm-red">
                            <!-- image, title, descriptio -->
                             <div class="">
                                <!-- image -->
                                 <div class=""></div>

                                 <!-- imfo -->
                                  <div class="">
                                    <h3 class="font-semibold mb-2">General Inquiries</h3>
                                    <p class="text-sm text-gray-600 mb-2">For partnerships and other questions</p>
                                    
                                    <div class="">
                                        <p class="font-semibold text-tm-red">+254 7XX XXX XXX</p>
                                        <p class="font-semibold text-tm-red">tmgraphixlab@gmail.com</p>
                                    </div>
                                  </div>
                             </div>
                         </div>

                         <!-- Office Hours -->
                          <div class=""></div>
                     </div>

                     <!-- right section -->
                      <div class="w-full  md:w-1/2 bg-white rounded-lg p-4">
                        <!-- title -->
                         <h4 class="font-bold text-lg mb-4">Send us a Message</h4>

                         <!-- form -->
                          <form action="">

                            <!-- name and email -->
                             <div class="flex flex-col md:flex-row mb-4 gap-3">

                                <!-- name -->
                                 <div class="">
                                    <label class="block text-gray-500 text-sm" for="name">Full Name</label>
                                    <input
                                     required 
                                     class="rounded-md border border-gray-400 mt-2 p-2 outline-none w-full" 
                                     placeholder="John Doe" 
                                     type="text" 
                                     name="name" 
                                     id="name">
                                 </div>

                                 <!-- email -->
                                  <div class="">
                                    <label class="block text-sm text-gray-500" for="email">Email Address</label>
                                    <input
                                     required 
                                     class="rounded-md border border-gray-400 mt-2 p-2 outline-none w-full" 
                                     type="email" 
                                     name="email" 
                                     id="email"
                                     placeholder="john@gmail.com">
                                  </div>
                             </div>

                             <!-- phone -->
                                <div class="">
                                    <div class="flex flex-col">
                                        <label class="block text-gray-500 text-sm" for="phone">Phone Number</label>
                                        <input
                                         required 
                                         class="rounded-md border border-gray-400 mt-2 p-2 outline-none w-full" 
                                         type="tel" 
                                         name="phone" 
                                         id="phone"
                                         placeholder="+254 700 000 000">
                                    </div>
                                </div>

                                <!-- design of interest -->
                                <div class="">
                                    <div class="flex flex-col">
                                        <label class="block mt-2 text-sm text-gray-500" for="design">Interest:</label>
                                        <select
                                         required 
                                         class="rounded-md border border-gray-400 mt-2 p-2 outline-none w-full mb-2" 
                                         name="design" 
                                         id="design">
                                            <option value="">Select a Category</option>
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
                                        <label class="block text-sm text-gray-500" for="message">Your Message *</label>
                                        <textarea
                                         class="w-full border border-gray-400 rounded-md mt-2 mb-2 p-2 outline-none" 
                                         name="message" 
                                         id="message" 
                                         rows="5" 
                                         required 
                                         placeholder="Tell us about your interest..."></textarea>
                                    </div>
                                    </div>


                                    <!-- button -->
                                    <div class="w-full text-center mt-4 mb-4 bg-blue-600 rounded-md p-2 text-white font-semibold">
                                    <button type="">
                                        Send Message
                                    </button>
                                    </div>

                                    <!-- response -->
                                    <div class="w-full text-center text-gray-500 text-sm">
                                    <p>Responding within 24 hours during business days.</p>
                                    </div>
                          </form>
                      </div>
                      
                 </div>
                 
            </div>
           </section>

           <!-- contact details -->
            <section></section>

            <!-- faqs -->
             <section class="py-4">
                <div class="container px-4 mx-auto text-center rounded-md bg-gray-300 p-4">
                    <!-- title -->
                     <h3 class="font-semibold text-lg">Common Questions?</h3>
                     <p class="text-sm text-gray-800">
                        Check FAQ page for answers to frequently asked questions about our work.
                     </p>

                     <!-- button -->
                      <button class="round-md p-2 border border-black rounded-md mt-2 bg-white">
                        <div class="flex items-center gap-1">
                            <img src="/help.png" alt="help" width="20">
                            <span class="text-sm text-tm-red font-medium">Visit FAQ Page</span>
                        </div>
                      </button>
                </div>
             </section>

             <section class="py-4 bg-tm-red mb-4 fixed top-0 left-0 w-full z-50">
            <!-- logo and menu -->
             <div class="container px-2 mx-auto flex justify-between items-center">
                <!-- logo -->
                 <div class="flex items-center gap-2">
                    <RouterLink to="/" class="flex items-center gap-2">
                        <img src="/TM LOGO3.png" alt="logo" width="50">
                        <div class="">
                            <p class="text-tm-gray font-semibold text-xl">TMGRAFIXLAB</p>
                        </div>
                    </RouterLink>
                 </div>

                 <!-- desktop menu -->
                  <div class="md:flex gap-4 hidden">
                    <a class="text-white font-bold" href="/">Home</a>
                    <a class="text-white font-bold" href="/about">About</a>
                    <a class="text-white font-bold" href="/portfolio">Portfolio</a>
                    <a class="text-white font-bold" href="/blog">Blog</a>
                    <a class="text-white font-bold" href="/contact-us">Contact</a>
                  </div>

                  <!-- mobile menu -->
                   <div class="md:hidden">
                    <button @click="isMenuOpen = !isMenuOpen">
                        <img src="/dial-pad.png" alt="menu" width="30">
                    </button>
                   </div>
             </div>
             <!-- md-menu -->
                    <div v-if="isMenuOpen" class="md:hidden flex flex-col bg-tm-red px-4 pb-4 pt-4 gap-2">
                        <a class="text-white font-bold" href="/">Home</a>
                        <a class="text-white font-bold" href="/about">About</a>
                        <a class="text-white font-bold" href="/portfolio">Portfolio</a>
                        <a class="text-white font-bold" href="/blog">Blog</a>
                        <a class="text-white font-bold" href="/contact-us">Contact</a>
                    </div>
         </section>

         <!-- footer  -->
          <Footer />
    </div>
</template>

<script>
import Footer from '@/components/Footer.vue';
import Header from '@/components/Header.vue';
import Marquee from '@/components/Marquee.vue';

    export default {

        components: {
            Header, 
            Footer,
            Marquee
        },

        data() {
            return {
            }
        }
    }
</script>
