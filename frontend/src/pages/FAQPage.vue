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
                    <h3 class="text-center mb-4 font-semibold text-tm-red text-3xl">TmGrafixLab FAQs</h3>
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
                        <h3 class="text-tm-red font-medium text-2xl mb-1">{{ projectCount }}+</h3>
                        <p class="text-gray-700">PROJECTS DELIVERED</p>
                     </div>

                     <!-- support -->
                      <div class="flex flex-col items-center bg-white shadow-md rounded-md p-2">
                        <h3 class="text-tm-red font-medium text-2xl mb-1">24/7</h3>
                        <p class="text-gray-700">SUPPORT</p>
                      </div>

                      <!-- satisfaction -->
                       <div class="flex flex-col items-center bg-white shadow-md rounded-md p-2">
                        <h3 class="text-tm-red font-medium text-2xl mb-1">{{ satisfactionCount }}%</h3>
                        <p class="text-gray-700">CLIENT SATISFACTION</p>
                       </div>
                   </div>
            </div>
         </section>

        <!-- Middle  -->
         <section class="py-4">
            <div class="container mx-auto px-4">
                <!-- DESKTOP VIEW (md and above) -->
                <div class="hidden md:flex md:flex-row gap-4">
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
                              :class="activeSection === 'about' ? 'border-l-2 bg-red-100 border-tm-red' : ''">
                                <img src="/info.png" alt="about" width="25" class="icon-red">
                                <span class="text-gray-600">About Us</span>
                             </button>

                             <!-- services -->
                              <button
                               @click="activeSection = 'service'" 
                               type="button" 
                               class="flex items-center gap-1 px-3 py-2 rounded-md transition"
                               :class="activeSection === 'service' ? 'border-l-2 bg-red-100 border-tm-red' : ''">
                                <img src="/customer-support(1).png" alt="services" width="25" class="icon-red">
                                <span class="text-gray-600">Services</span>
                              </button>

                              <!-- Our Process -->
                               <button
                                @click="activeSection = 'process'" 
                                type="button" 
                                class="flex items-center gap-1 px-3 py-2 rounded-md transition"
                                :class="activeSection === 'process' ? 'border-l-2 bg-red-100 border-tm-red' : ''">
                                <img src="/process.png" alt="process" width="25" class="icon-red">
                                <span class="text-gray-600">Our Process</span>
                               </button>

                               <!-- Revisions -->
                                <button
                                 @click="activeSection = 'revision'" 
                                 type="button" 
                                 class="flex items-center gap-1 px-3 py-2 rounded-md transition"
                                 :class="activeSection === 'revision' ? 'border-l-2 bg-red-100 border-tm-red': ''">
                                    <img src="/revision.png" alt="revision" width="25" class="icon-red">
                                    <span class="text-gray-600">Revisions</span>
                                </button>

                                <!-- pricing and Payment -->
                                 <button
                                  @click="activeSection = 'pricing'" 
                                  type="button" 
                                  class="flex items-center gap-1 px-3 py-2 rounded-md transition"
                                  :class="activeSection === 'pricing' ? 'border-l-2 bg-red-100 border-tm-red' : ''">
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

                                  <!-- web design -->
                                  <div class="mt-2">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">Web Design & Development</h3>
                                        <button @click="toggleServiceNote('web')" type="button" class="">
                                            <img :src="activeServiceNote === 'web' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeServiceNote === 'web'" class="text-gray-600 text-sm">
                                        We design and develop responsive, high-performance websites that look great and 
                                        work flawlessly across all devices. From leading pages to full business websites, our web 
                                        solutions are built to engage users, communicate clearly, and drive results.
                                      </p>
                                  </div>

                                  <!-- mobile design -->
                                   <div class="mt-2">
                                    <!-- title -->
                                     <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red text-xl font-medium mb-2">Mobile App Design (UI/UX)</h3>
                                        <button @click="toggleServiceNote('app')" type="button" class="">
                                            <img :src="activeServiceNote === 'app' ? '/minus.png' : '/plus(2).png'" alt="plus" width="20" class="icon-red">
                                        </button>
                                     </div>

                                     <!-- desc -->
                                      <p v-if="activeServiceNote === 'app'" class="text-gray-600 text-sm">
                                        We create inituitive and visually compelling mobile app interfaces focussed on user experience and usability. 
                                        Our app designs are guided by user behaviour, clarity, and flow - ensuring your product is easy to use and visually memorable.
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

            <!-- MOBILE VIEW (below md) -->
            <div class="md:hidden container mx-auto px-4">
                <!-- Categories as buttons with content below each -->
                <div class="space-y-2">
                    <!-- About Us -->
                    <div class="bg-white rounded-md shadow-md overflow-hidden">
                        <button
                            @click="activeSection = activeSection === 'about' ? null : 'about'"
                            type="button"
                            class="w-full flex items-center justify-between px-4 py-3 transition"
                            :class="activeSection === 'about' ? 'bg-red-100 border-l-4 border-tm-red' : ''">
                            <div class="flex items-center gap-2">
                                <img src="/info.png" alt="about" width="25" class="icon-red">
                                <span class="text-gray-700 font-medium">About Us</span>
                            </div>
                            <span class="text-tm-red font-bold text-xl">{{ activeSection === 'about' ? '−' : '+' }}</span>
                        </button>
                        
                        <!-- Content appears directly below About Us button when active -->
                        <div v-if="activeSection === 'about'" class="p-4 border-t border-gray-200">
                            <div class="flex flex-col items-center mb-4">
                                <img src="/info.png" alt="about" width="50" class="icon-red mb-2">
                                <p class="text-tm-red font-medium text-xl">About TMGrafixLab</p>
                                <p class="text-gray-500 text-sm text-center">Get to know who we are and what drives our creative process</p>
                            </div>
                            
                            <!-- FAQ items -->
                            <div class="space-y-3">
                                <div class="border-b border-gray-100 pb-2">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">Who is TMgrafixLab?</h3>
                                        <button @click="toggleMobileAboutNote('who')" type="button">
                                            <img :src="mobileActiveAboutNote === 'who' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveAboutNote === 'who'" class="text-gray-600 text-sm mt-2">
                                        TMGrafixLab is a creative design studio specializing in bold, thoughtful, and impactful visual design.
                                    </p>
                                </div>
                                
                                <div class="border-b border-gray-100 pb-2">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">Who do you work with?</h3>
                                        <button @click="toggleMobileAboutNote('clients')" type="button">
                                            <img :src="mobileActiveAboutNote === 'clients' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveAboutNote === 'clients'" class="text-gray-600 text-sm mt-2">
                                        We work with startups, businesses, creatives, and growing brands that value strong visuals.
                                    </p>
                                </div>
                                
                                <div>
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">What makes TMGrafixLab different?</h3>
                                        <button @click="toggleMobileAboutNote('difference')" type="button">
                                            <img :src="mobileActiveAboutNote === 'difference' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveAboutNote === 'difference'" class="text-gray-600 text-sm mt-2">
                                        We don't just design, we think. Every project is guided by strategy and creative.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Services -->
                    <div class="bg-white rounded-md shadow-md overflow-hidden">
                        <button
                            @click="activeSection = activeSection === 'service' ? null : 'service'"
                            type="button"
                            class="w-full flex items-center justify-between px-4 py-3 transition"
                            :class="activeSection === 'service' ? 'bg-red-100 border-l-4 border-tm-red' : ''">
                            <div class="flex items-center gap-2">
                                <img src="/customer-support(1).png" alt="services" width="25" class="icon-red">
                                <span class="text-gray-700 font-medium">Services</span>
                            </div>
                            <span class="text-tm-red font-bold text-xl">{{ activeSection === 'service' ? '−' : '+' }}</span>
                        </button>
                        
                        <div v-if="activeSection === 'service'" class="p-4 border-t border-gray-200">
                            <div class="flex flex-col items-center mb-4">
                                <img src="/customer-support(1).png" alt="services" width="50" class="icon-red mb-2">
                                <p class="text-tm-red font-medium text-xl">Services</p>
                                <p class="text-gray-500 text-sm text-center">Get to know the services we offer</p>
                            </div>
                            
                            <div class="space-y-3">
                                <div class="border-b border-gray-100 pb-2">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">Custom design solutions?</h3>
                                        <button @click="toggleMobileServiceNote('customize')" type="button">
                                            <img :src="mobileActiveServiceNote === 'customize' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveServiceNote === 'customize'" class="text-gray-600 text-sm mt-2">
                                        Absolutely. Every project is tailored to your brand's needs.
                                    </p>
                                </div>
                                
                                <div class="border-b border-gray-100 pb-2">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">Brand redesign?</h3>
                                        <button @click="toggleMobileServiceNote('redesign')" type="button">
                                            <img :src="mobileActiveServiceNote === 'redesign' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveServiceNote === 'redesign'" class="text-gray-600 text-sm mt-2">
                                        Yes. Full rebrand or subtle refresh to elevate your visuals.
                                    </p>
                                </div>
                                
                                <div>
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">Web & Mobile Design</h3>
                                        <button @click="toggleMobileServiceNote('web')" type="button">
                                            <img :src="mobileActiveServiceNote === 'web' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveServiceNote === 'web'" class="text-gray-600 text-sm mt-2">
                                        Responsive websites and intuitive mobile app interfaces.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Our Process -->
                    <div class="bg-white rounded-md shadow-md overflow-hidden">
                        <button
                            @click="activeSection = activeSection === 'process' ? null : 'process'"
                            type="button"
                            class="w-full flex items-center justify-between px-4 py-3 transition"
                            :class="activeSection === 'process' ? 'bg-red-100 border-l-4 border-tm-red' : ''">
                            <div class="flex items-center gap-2">
                                <img src="/process.png" alt="process" width="25" class="icon-red">
                                <span class="text-gray-700 font-medium">Our Process</span>
                            </div>
                            <span class="text-tm-red font-bold text-xl">{{ activeSection === 'process' ? '−' : '+' }}</span>
                        </button>
                        
                        <div v-if="activeSection === 'process'" class="p-4 border-t border-gray-200">
                            <div class="flex flex-col items-center mb-4">
                                <img src="/process.png" alt="process" width="50" class="icon-red mb-2">
                                <p class="text-tm-red font-medium text-xl">Our Process</p>
                                <p class="text-gray-500 text-sm text-center">How we work for quality results</p>
                            </div>
                            
                            <div class="space-y-3">
                                <div class="border-b border-gray-100 pb-2">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">How does the process work?</h3>
                                        <button @click="toggleMobileProcessNote('how')" type="button">
                                            <img :src="mobileActiveProcessNote === 'how' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveProcessNote === 'how'" class="text-gray-600 text-sm mt-2">
                                        Discovery, research, concept, design, feedback, and delivery.
                                    </p>
                                </div>
                                
                                <div>
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">Will I be involved?</h3>
                                        <button @click="toggleMobileProcessNote('involve')" type="button">
                                            <img :src="mobileActiveProcessNote === 'involve' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveProcessNote === 'involve'" class="text-gray-600 text-sm mt-2">
                                        Yes. We collaborate and provide regular updates.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Revisions -->
                    <div class="bg-white rounded-md shadow-md overflow-hidden">
                        <button
                            @click="activeSection = activeSection === 'revision' ? null : 'revision'"
                            type="button"
                            class="w-full flex items-center justify-between px-4 py-3 transition"
                            :class="activeSection === 'revision' ? 'bg-red-100 border-l-4 border-tm-red' : ''">
                            <div class="flex items-center gap-2">
                                <img src="/revision.png" alt="revision" width="25" class="icon-red">
                                <span class="text-gray-700 font-medium">Revisions</span>
                            </div>
                            <span class="text-tm-red font-bold text-xl">{{ activeSection === 'revision' ? '−' : '+' }}</span>
                        </button>
                        
                        <div v-if="activeSection === 'revision'" class="p-4 border-t border-gray-200">
                            <div class="flex flex-col items-center mb-4">
                                <img src="/revision.png" alt="revision" width="50" class="icon-red mb-2">
                                <p class="text-tm-red font-medium text-xl">Revisions</p>
                                <p class="text-gray-500 text-sm text-center">Understanding our revision process</p>
                            </div>
                            
                            <div class="space-y-3">
                                <div class="border-b border-gray-100 pb-2">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">How many revisions?</h3>
                                        <button @click="toggleMobileRevisionNote('amount')" type="button">
                                            <img :src="mobileActiveRevisionNote === 'amount' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveRevisionNote === 'amount'" class="text-gray-600 text-sm mt-2">
                                        Set number defined upfront for smooth process.
                                    </p>
                                </div>
                                
                                <div>
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">Additional revisions?</h3>
                                        <button @click="toggleMobileRevisionNote('request')" type="button">
                                            <img :src="mobileActiveRevisionNote === 'request' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActiveRevisionNote === 'request'" class="text-gray-600 text-sm mt-2">
                                        Yes, at an agreed cost if needed.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pricing & Payment -->
                    <div class="bg-white rounded-md shadow-md overflow-hidden">
                        <button
                            @click="activeSection = activeSection === 'pricing' ? null : 'pricing'"
                            type="button"
                            class="w-full flex items-center justify-between px-4 py-3 transition"
                            :class="activeSection === 'pricing' ? 'bg-red-100 border-l-4 border-tm-red' : ''">
                            <div class="flex items-center gap-2">
                                <img src="/bill.png" alt="pricing" width="25" class="icon-red">
                                <span class="text-gray-700 font-medium">Pricing & Payment</span>
                            </div>
                            <span class="text-tm-red font-bold text-xl">{{ activeSection === 'pricing' ? '−' : '+' }}</span>
                        </button>
                        
                        <div v-if="activeSection === 'pricing'" class="p-4 border-t border-gray-200">
                            <div class="flex flex-col items-center mb-4">
                                <img src="/bill.png" alt="pricing" width="50" class="icon-red mb-2">
                                <p class="text-tm-red font-medium text-xl">Pricing & Payments</p>
                                <p class="text-gray-500 text-sm text-center">How our pricing works</p>
                            </div>
                            
                            <div class="space-y-3">
                                <div>
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-tm-red font-medium">How much do services cost?</h3>
                                        <button @click="toggleMobilePricingNote('how')" type="button">
                                            <img :src="mobileActivePricingNote === 'how' ? '/minus.png' : '/plus(2).png'" alt="toggle" width="18" class="icon-red">
                                        </button>
                                    </div>
                                    <p v-if="mobileActivePricingNote === 'how'" class="text-gray-600 text-sm mt-2">
                                        Custom quotes tailored to each project scope.
                                    </p>
                                </div>
                            </div>
                        </div>
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

                activeSection: 'about',

                activeAboutNote: 'who',
                activeServiceNote: 'customize',
                activeProcessNote: 'how',
                activeRevisionNote: 'amount',
                activePricingNote: 'how',

                // Mobile nested toggles
                mobileActiveAboutNote: 'who',
                mobileActiveServiceNote: 'customize',
                mobileActiveProcessNote: 'how',
                mobileActiveRevisionNote: 'amount',
                mobileActivePricingNote: 'how',

                projectCount: 0,
                satisfactionCount: 0
            }
        },

        methods: {

            animateCount(target, key) {
                let current = 0
                const increment = Math.ceil(target / 60)

                const timer = setInterval(() => {
                    current += increment
                    if (current >= target) {
                        this[key] = target
                        clearInterval(timer)
                    } else {
                        this[key] = current
                    }
                }, 20)
            },

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

            // Mobile toggle methods
            toggleMobileAboutNote(note) {
                this.mobileActiveAboutNote = this.mobileActiveAboutNote === note ? null : note
            },

            toggleMobileServiceNote(note) {
                this.mobileActiveServiceNote = this.mobileActiveServiceNote === note ? null : note
            },

            toggleMobileProcessNote(note) {
                this.mobileActiveProcessNote = this.mobileActiveProcessNote === note ? null : note
            },

            toggleMobileRevisionNote(note) {
                this.mobileActiveRevisionNote = this.mobileActiveRevisionNote === note ? null : note
            },

            toggleMobilePricingNote(note) {
                this.mobileActivePricingNote = this.mobileActivePricingNote === note ? null : note
            },

            openContactPage() {
                router.push('/contact-us')
            }
        },

        mounted() {
            this.animateCount(200, 'projectCount')
            this.animateCount(98, 'satisfactionCount')
        }
    }
</script>

<style scoped>
    .icon-red {
        filter: brightness(0) saturate(100%) invert(24%) sepia(88%) saturate(5065%) hue-rotate(355deg) brightness(95%) contrast(110%);
    }
</style>