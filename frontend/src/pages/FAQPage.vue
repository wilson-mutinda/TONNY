<template>
    <div class="bg-tm-gray min-h-screen">
        <!-- Header -->
         <Header />

        <!-- MArquee -->
         <Marquee />

        <!-- Top -->
         <section class="py-8 pt-36">
            <div class="container mx-auto px-4">
                <!-- title -->
                 <div class="mb-4">
                    <h3 class="text-center mb-4 font-bold text-tm-red text-3xl">TmGrafixLab FAQs</h3>
                    <p class="text-sm text-center text-gray-600 mx-auto max-w-md">Everything you need to know about working 
                        with TmGrafixLab, our process, and what makes us different.
                    </p>
                 </div>

                 <!-- divider -->
                  <div class="container bg-tm-red h-px mb-4"></div>

                  <!-- advantages -->
                   <div class="grid grid-cols-1 md:grid-cols-3 gap-4">

                    <!-- projects -->
                     <div class="flex flex-col items-center bg-white shadow-md rounded-md p-2">
                        <h3 class="text-tm-red font-medium text-2xl mb-1">100+</h3>
                        <p class="text-gray-700">PROJECTS DELIVERED</p>
                     </div>

                     <!-- support -->
                      <div class="flex flex-col items-center bg-white shadow-md rounded-md p-2">
                        <h3 class="text-tm-red font-medium text-2xl mb-1">24/7</h3>
                        <p class="text-gray-700">SUPPORT</p>
                      </div>

                      <!-- satisfaction -->
                       <div class="flex flex-col items-center bg-white shadow-md rounded-md p-2">
                        <h3 class="text-tm-red font-medium text-2xl mb-1">98%</h3>
                        <p class="text-gray-700">CLIENT SATISFACTION</p>
                       </div>
                   </div>
            </div>
         </section>

        <!-- Middle  -->
         <section class="py-4">
            <div class="container mx-auto px-4">
                <!-- left and right sections -->
                 <div class="flex flex-col md:flex-row gap-4">
                    <!-- left section -->
                     <div class="p-4 bg-white rounded-md shadow-md w-full md:w-[18%]">
                        <!-- title -->
                         <h3 class="text-gray-700 mb-2">Categories</h3>

                         <!-- divider -->
                          <div class="bg-tm-red h-px mb-2"></div>

                          <!-- categories -->
                           <div class="flex flex-col gap-4 mb-4 mt-4">

                            <!-- about us -->
                             <button
                              @click="activeSection = 'about'" 
                              type="button" 
                              class="flex items-center gap-1 px-3 py-2 rounded-md transition"
                              :class="activeSection === 'about' ? 'border-l-2 bg-red-100 border-tm-red text-white' : ''">
                                <img src="/info.png" alt="about" width="25" class="icon-red">
                                <span class="text-gray-600">About Us</span>
                             </button>

                             <!-- services -->
                              <button
                               @click="activeSection = 'service'" 
                               type="button" 
                               class="flex items-center gap-1 px-3 py-2 rounded-md transition"
                               :class="activeSection === 'service' ? 'border-l-2 bg-red-100 border-tm-red text-white' : ''">
                                <img src="/customer-support(1).png" alt="services" width="25" class="icon-red">
                                <span class="text-gray-600">Services</span>
                              </button>

                              <!-- Our Process -->
                               <button
                                @click="activeSection = 'process'" 
                                type="button" 
                                class="flex items-center gap-1 px-3 py-2 rounded-md transition"
                                :class="activeSection === 'process' ? 'border-l-2 bg-red-100 border-tm-red text-white' : ''">
                                <img src="/process.png" alt="process" width="25" class="icon-red">
                                <span class="text-gray-600">Our Process</span>
                               </button>

                               <!-- Revisions -->
                                <button
                                 @click="activeSection = 'revision'" 
                                 type="button" 
                                 class="flex items-center gap-1 px-3 py-2 rounded-md transition"
                                 :class="activeSection === 'revision' ? 'border-l-2 bg-red-100 border-tm-red text-white': ''">
                                    <img src="/revision.png" alt="revision" width="25" class="icon-red">
                                    <span class="text-gray-600">Revisions</span>
                                </button>

                                <!-- pricing and Payment -->
                                 <button
                                  @click="activeSection = 'pricing'" 
                                  type="button" 
                                  class="flex items-center gap-1 px-3 py-2 rounded-md transition"
                                  :class="activeSection === 'pricing' ? 'border-l-2 bg-red-100 border-tm-red text-white' : ''">
                                    <img src="/bill.png" alt="billing" width="25" class="icon-red">
                                    <span class="text-gray-600">Pricing & Payment</span>
                                 </button>

                           </div>

                           <!-- divider -->
                            <div class="bg-tm-red h-px mb-4"></div>

                            <!-- cta -->
                             <div class="">
                                <h3 class="text-gray-600 text-center mb-4">Can't find your answer?</h3>
                                <button
                                @click="openContactPage"
                                 type="button"
                                 class="bg-tm-red w-full rounded-md px-4 py-2 text-white font-medium">
                                    Ask Your Question
                                </button>
                             </div>
                     </div>
                     <!-- right section -->
                      <div class="w-full md:w-[82%]">

                        <!-- about section -->
                        <section v-if="activeSection == 'about'">
                            <div class="flex flex-col items-center">
                                <img src="/info.png" alt="about" width="50" class="icon-red mb-4">
                                <p class="text-tm-red font-medium text-2xl mb-2">About TMGrafixLab</p>
                                <p class="text-gray-600 mb-2">Get to know who we are and what drives our creative process</p>
                            </div>
                            
                            <!-- info grid -->
                             <div class="bg-white rounded-md shadow-md p-4">

                                <!-- who is tmgrafixlab -->
                                 <div class="">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">Who is TMgrafixLab?</h3>
                                        <button @click="toggleAboutNote('who')" type="button" class="">
                                            <img :src="activeAboutNote === 'who' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeAboutNote === 'who'" class="text-gray-600 text-sm">TMGrafixLab is a creative design studio specializing in bold, thoughtful, and impactful 
                                        visual design. We help brands communicate clearly and stand out through strategic graphic design that 
                                        tells your unique story.
                                      </p>

                                 </div>

                                 <!-- who do you work with -->
                                  <div class="mt-2">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">Who do you work with?</h3>
                                        <button @click="toggleAboutNote('clients')" type="button" class="">
                                            <img :src="activeAboutNote === 'clients' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeAboutNote === 'clients'" class="text-gray-600 text-sm">We work with startups, businesses, creatives, and growing brands that value 
                                        strong visuals and intentional design
                                      </p>
                                  </div>

                                  <!-- what makes TMGrafixLab different? -->
                                   <div class="mt-2">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">What makes TMGrafixLab different?</h3>
                                        <button @click="toggleAboutNote('difference')" type="button" class="">
                                            <img :src="activeAboutNote === 'difference' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                     <p v-if="activeAboutNote === 'difference'" class="text-gray-600 text-sm">We don't just design, we think. Every project is guided by strategy, creative, and a deep understanding of 
                                        your brand goals.
                                     </p>
                                   </div>
                             </div>
                        </section>

                        <!-- services -->
                         <section v-if="activeSection == 'service'">
                            <div class="flex flex-col items-center">
                                <img src="/customer-support(1).png" alt="about" width="50" class="icon-red mb-4">
                                <p class="text-tm-red font-medium text-2xl mb-2">Services</p>
                                <p class="text-gray-600 mb-2">Get to know the services we offer to our clients</p>
                            </div>
                            
                            <!-- info grid -->
                             <div class="bg-white rounded-md shadow-md p-4">

                                <!-- who is tmgrafixlab -->
                                 <div class="">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">Do you offer custom design solutions?</h3>
                                        <button @click="toggleServiceNote('customize')" type="button" class="">
                                            <img :src="activeServiceNote === 'customize' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeServiceNote === 'customize'" class="text-gray-600 text-sm">Absolutely. Every project at TMGrafixLab is tailored to 
                                        your brand's needs, audience, and objectives.
                                      </p>

                                 </div>

                                 <!-- who do you work with -->
                                  <div class="mt-2">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">Can you redesign or refresh an existing brand?</h3>
                                        <button @click="toggleServiceNote('redesign')" type="button" class="">
                                            <img :src="activeServiceNote === 'redesign' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeServiceNote === 'redesign'" class="text-gray-600 text-sm">Yes. Whether it's a full rebrand or a subtle refresh, we help 
                                        elevate existing visuals while keeping brand consistency intact.
                                      </p>
                                  </div>
                             </div>
                        </section>

                        <!-- Our Processs -->
                         <section v-if="activeSection == 'process'">
                            <div class="flex flex-col items-center">
                                <img src="/process.png" alt="about" width="50" class="icon-red mb-4">
                                <p class="text-tm-red font-medium text-2xl mb-2">Our Process</p>
                                <p class="text-gray-600 mb-2">Get to know the processes involved for quality results</p>
                            </div>
                            
                            <!-- info grid -->
                             <div class="bg-white rounded-md shadow-md p-4">

                                <!-- who is tmgrafixlab -->
                                 <div class="">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">How does the design process work?</h3>
                                        <button @click="toggleProcessNote('how')" type="button" class="">
                                            <img :src="activeProcessNote === 'how' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeProcessNote === 'how'" class="text-gray-600 text-sm">Our process includes discovery, research, concept development, design execution, 
                                        feedback, and final delivery. Clients are involved at every key stage.
                                      </p>

                                 </div>

                                 <!-- who do you work with -->
                                  <div class="mt-2">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">Will I be involved during the project?</h3>
                                        <button @click="toggleProcessNote('involve')" type="button" class="">
                                            <img :src="activeProcessNote === 'involve' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeProcessNote === 'involve'" class="text-gray-600 text-sm">Yes. We value collaboration and provide regular updates to ensure 
                                        the final outcome aligns with your vision.
                                      </p>
                                  </div>
                             </div>
                        </section>

                        <!-- Revisions -->
                         <section v-if="activeSection == 'revision'">
                            <div class="flex flex-col items-center">
                                <img src="/revision.png" alt="about" width="50" class="icon-red mb-4">
                                <p class="text-tm-red font-medium text-2xl mb-2">Revisions</p>
                                <p class="text-gray-600 mb-2">Get to know the revision process</p>
                            </div>
                            
                            <!-- info grid -->
                             <div class="bg-white rounded-md shadow-md p-4">

                                <!-- who is tmgrafixlab -->
                                 <div class="">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">How many revisions are included?</h3>
                                        <button @click="toggleRevisionNote('amount')" type="button" class="">
                                            <img :src="activeRevisionNote === 'amount' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeRevisionNote === 'amount'" class="text-gray-600 text-sm">Each project includes a set number of revisions, defined upfront to 
                                        keep the process smooth and transparent.
                                      </p>

                                 </div>

                                 <!-- who do you work with -->
                                  <div class="mt-2">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">Can I request additional revisions?</h3>
                                        <button @click="toggleRevisionNote('request')" type="button" class="">
                                            <img :src="activeRevisionNote === 'request' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeRevisionNote === 'request'" class="text-gray-600 text-sm">Yes. Additional revisions can be accomodated at an agreed cost if needed.
                                      </p>
                                  </div>
                             </div>
                        </section>

                        <!-- Pricing & Payment -->
                         <section v-if="activeSection == 'pricing'">
                            <div class="flex flex-col items-center">
                                <img src="/bill.png" alt="about" width="50" class="icon-red mb-4">
                                <p class="text-tm-red font-medium text-2xl mb-2">Pricing & Payments</p>
                                <p class="text-gray-600 mb-2">Get to know how our pricing varies</p>
                            </div>
                            
                            <!-- info grid -->
                             <div class="bg-white rounded-md shadow-md p-4">

                                <!-- who is tmgrafixlab -->
                                 <div class="">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">How much do your services cost?</h3>
                                        <button @click="togglePricingNote('how')" type="button" class="">
                                            <img :src="activePricingNote === 'how' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activePricingNote === 'how'" class="text-gray-600 text-sm">Pricing varies based on project scope, complexity, and timeline. 
                                        TMGrafixLab provides custom quotes tailored to each project.
                                      </p>

                                 </div>
                             </div>
                        </section>

                      </div>
                 </div>
            </div>
         </section>

        <!-- bottom -->
         <section class="py-4">
            <div class="container mx-auto px-4 bg-tm-red rounded-md p-4">
                <!-- title -->
                 <div class="">
                    <h3 class="text-white text-center font-semibold text-2xl mb-2">Still Have Questions?</h3>
                    <p class="text-center text-white text-sm mx-auto max-w-md mb-4">We're here to help. Get in touch with our team for 
                        personalized answers and to discuss your project.
                    </p>
                 </div>

                 <!-- buttons -->
                  <div class="flex items-center justify-center gap-4">
                    <!-- contact us -->
                     <RouterLink
                      to="/contact-us"
                      class="bg-white px-4 py-2 rounded-full text-tm-red font-semibold hover:text-white hover:bg-tm-red hover:border">
                        Contact us
                     </RouterLink>

                     <!-- View Services -->
                      <RouterLink
                       to="/services"
                       class="rounded-full border px-4 py-2 text-white font-semibold hover:text-tm-red hover:bg-white">
                        View Services
                      </RouterLink>
                  </div>
            </div>
         </section>

        <!-- Footer -->
         <Footer />

    </div>
</template>

<script>
import Footer from '@/components/Footer.vue';
import Header from '@/components/Header.vue';
import Marquee from '@/components/Marquee.vue';
import router from '@/router';
import { RouterLink } from 'vue-router';

    export default {
        components: {
            Header,
            Marquee,
            Footer
        },

        data() {
            return {
                openNotes: false,
                openAboutUsGrid: false,
                openServiceGrid: false,
                openProcessGrid: false,
                openRevisionGrid: false,
                openPricingGrid: false, 

                activeSection: null,

                activeAboutNote: 'who',

                activeServiceNote: 'customize',

                activeProcessNote: 'how',

                activeRevisionNote: 'amount',

                activePricingNote: 'how'
            }
        },

        methods: {

            togglePricingNote(note) {
                this.activePricingNote = this.activePricingNote === note ? null : note
            },

            toggleRevisionNote(note) {
                this.activeRevisionNote = this.activeRevisionNote === note ? null : note
            },

            toggleProcessNote(note) {
                this.activeProcessNote = this.activeProcessNote === note ? null : note
            },

            toggleServiceNote(note) {
                this.activeServiceNote = this.activeServiceNote === note ? null : note
            },

            toggleAboutNote(note) {
                this.activeAboutNote = this.activeAboutNote === note ? null : note
            },

            openContactPage() {
                router.push('/contact-us')
            }
        },

        mounted() {
            this.activeSection = 'about'
        }
    }
</script>

<style scoped>
    .icon-red {
        filter: brightness(0) saturate(100%) invert(24%) sepia(88%) saturate(5065%) hue-rotate(355deg) brightness(95%) contrast(110%);
    }
</style>
