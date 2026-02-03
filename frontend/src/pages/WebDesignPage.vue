<template>
    <div class="py-8">
        <!-- title -->
         <h3 class="text-tm-red text-center text-3xl font-medium">Professional Web Design Services</h3>

         <!-- hero -->
          <div class="container mx-auto px-4">
            <!-- left and right sections -->
             <div class="flex flex-col md:flex-row gap-8 mt-8">
                <!-- left section -->
                 <div class="">
                    <!-- title -->
                     <div class="text-center mb-4">
                        <h3 class="text-tm-red text-2xl font-medium mx-auto max-w-md">Stunning Websites That Convert 
                            Visitors Into Customers
                        </h3>
                        <p class="text-gray-600 text-sm mx-auto max-w-2xl">Custom-design, responsive websites built with modern technologies to 
                            showcase your brand, engage your audience, and active business growth.
                        </p>
                     </div>
                     <!-- action buttons -->
                      <div class="flex items-center justify-center mb-4 gap-4">
                        <button type="button" class="bg-tm-red px-4 py-2 rounded-full ring-1 ring-tm-red text-white font-medium hover:text-tm-red hover:bg-transparent">
                            View Pricing
                        </button>
                        <button type="button" class="ring-1 rounded-full px-4 py-2 text-tm-red font-medium ring-tm-red hover:bg-tm-red hover:text-white">
                            Get Free Consultation
                        </button>
                      </div>
                      <!-- actions -->
                       <div class="mt-8 grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div class="bg-white rounded-full flex items-center gap-1 px-4 py-2 text-gray-600">
                            <img src="/check(1).png" alt="check" width="30" class="icon-red">
                            <span>Fully Responsive Design</span>
                        </div>
                        <div class="bg-white rounded-full flex items-center gap-1 px-4 py-2 text-gray-600">
                            <img src="/check(1).png" alt="check" width="30" class="icon-red">
                            <span>SEO Optimized</span>
                        </div>
                        <div class="bg-white rounded-full flex items-center gap-1 px-4 py-2 text-gray-600">
                            <img src="/check(1).png" alt="check" width="30" class="icon-red">
                            <span>Fast Loading Speed</span>
                        </div>
                        <div class="bg-white rounded-full flex items-center gap-1 px-4 py-2 text-gray-600">
                            <img src="/check(1).png" alt="check" width="30" class="icon-red">
                            <span>Mobile-First Approach</span>
                        </div>
                       </div>
                       <!-- products -->
                        <div class="mt-8">
                            <h3 class="text-center font-semibold mb-2">We Design For:</h3>
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div class="flex items-center gap-1 bg-tm-red rounded-full px-4 py-2 text-white font-semibold">
                                    <img src="/period.png" alt="period" width="30" class="invert">
                                    <span>Business Websites</span>
                                </div>
                                <div class="flex items-center gap-1 bg-tm-red rounded-full px-4 py-2 text-white font-semibold">
                                    <img src="/period.png" alt="period" width="30" class="invert">
                                    <span>E-Commerce Stores</span>
                                </div>
                                <div class="flex items-center gap-1 bg-tm-red rounded-full px-4 py-2 text-white font-semibold">
                                    <img src="/period.png" alt="period" width="30" class="invert">
                                    <span>Portfolio Sites</span>
                                </div>
                                <div class="flex items-center gap-1 bg-tm-red rounded-full px-4 py-2 text-white font-semibold">
                                    <img src="/period.png" alt="period" width="30" class="invert">
                                    <span>Landing Pages</span>
                                </div>
                                <div class="flex items-center gap-1 bg-tm-red rounded-full px-4 py-2 text-white font-semibold">
                                    <img src="/period.png" alt="period" width="30" class="invert">
                                    <span>Blog Platforms</span>
                                </div>
                                <div class="flex items-center gap-1 bg-tm-red rounded-full px-4 py-2 text-white font-semibold">
                                    <img src="/period.png" alt="period" width="30" class="invert">
                                    <span>Service Business</span>
                                </div>
                            </div>
                        </div>
                 </div>
                 <!-- right section -->
                  <div class="bg-white rounded-md p-4">
                    <form action="" method="post">
                        <!-- title -->
                         <div class="">
                            <h3 class="text-tm-red font-medium mb-2 text-xl">Get Your Web Design Quote</h3>
                            <p class="text-gray-600 text-sm mb-2">Fill this quick form for a custom website proposal. We&apos;ll contact you within 24 hours.</p>
                         </div>

                         <!-- name -->
                          <div class="">
                            <label class="block mb-2 text-gray-600" for="name">Your Name</label>
                            <input class="outline-none ring-1 ring-gray-600 rounded-md p-2 w-full hover:ring-tm-red mb-2" type="text" name="name" id="name">
                          </div>

                          <!-- email address -->
                           <div class="">
                            <label class="block mb-2 text-gray-600" for="email">Email Address</label>
                            <input class="outline-none ring-1 ring-gray-600 rounded-md p-2 w-full hover:ring-tm-red mb-2" type="email" name="email" id="email">
                           </div>

                           <!-- website type -->
                            <div class="">
                                <label class="block mb-2 text-gray-600" for="type">Website Type</label>
                                <select class="outline-none ring-1 ring-gray-600 rounded-md p-2 w-full hover:ring-tm-red mb-2" name="web-type" id="web-type">
                                    <option value="">Select Website Type</option>
                                    <option value="business-website">Business Website</option>
                                    <option value="e-commerce">E-Commerce Store</option>
                                    <option value="portfolio">Portfolio Website</option>
                                    <option value="landing-page">Landing Page</option>
                                    <option value="blog">Blog/Content Site</option>
                                    <option value="service">Service Business</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>

                            <!-- pages -->
                             <div class="">
                                <label class="block mb-2 text-gray-600" for="quantity">Estimated Pages Needed</label>
                                <select class="outline-none ring-1 ring-gray-600 rounded-md p-2 w-full hover:ring-tm-red mb-2" name="quantity" id="quantity">
                                    <option value="1-3">1-3 Pages</option>
                                    <option value="4-6">4-6 Pages</option>
                                    <option value="7-10">7-10 Pages</option>
                                    <option value="10+">10+ Pages   </option>
                                    <option value="other">Other</option>
                                </select>
                             </div>

                             <!-- timeline -->
                              <div class="">
                                <label class="block mb-2 text-gray-600" for="timeline">Desired Timeline</label>
                                <select class="outline-none ring-1 ring-gray-600 rounded-md p-2 w-full hover:ring-tm-red mb-2" name="timeline" id="timeline">
                                    <option value="1-2">ASAP (1-2 weeks)</option>
                                    <option value="standard">Standard (3-4 weeks)</option>
                                    <option value="flexible">Flexible (1-2 months)</option>
                                </select>
                              </div>

                              <!-- message -->
                               <div class="">
                                <label class="block mb-2 text-gray-600" for="message">Tell us about your project</label>
                                <textarea class="outline-none ring-1 ring-gray-600 rounded-md p-2 w-full hover:ring-tm-red mb-2" name="message" id="message" rows="4"></textarea>
                               </div>

                               <!-- request button -->
                                <div class="text-white text-center bg-tm-red rounded-md px-4 py-2 mt-2 mb-2">
                                    <button type="button">
                                        Request Quotation
                                    </button>
                                </div>

                                <!-- actions -->
                                 <div class="text-center text-gray-600">
                                    <p>We&apos;ll provide a detailed proposal within 12 hours.</p>
                                 </div>
                    </form>
                  </div>
             </div>
          </div>

          <!-- tech stack -->
           <section class="py-4">
            <div class="container bg-white mx-auto px-4 rounded-md p-4 mt-4">
                <!-- title -->
                <div class="text-center">
                    <h3 class="text-tm-red font-medium text-2xl mb-2">Modern Technology Stack</h3>
                    <p class="text-sm text-gray-600">We use the latest technologies to build fast, secure, and scalable websites.</p>
                </div>

                <!-- lang cards -->
                 <div class="flex flex-col md:flex-row items-center justify-between gap-4 mt-6">
                    <!-- vue.js -->
                     <div class="text-center bg-white shadow-md rounded-md p-4 w-full">
                        <h3 class="font-semibold text-xl text-blue-800">Vue.js</h3>
                        <p class="text-sm text-gray-600">Frontend framework</p>
                     </div>
                     <!-- node.js -->
                      <div class="text-center bg-white shadow-md rounded-md p-4 w-full">
                        <h3 class="font-semibold text-xl text-green-600">Node.js</h3>
                        <p class="text-sm text-gray-600">Backend Runtime</p>
                      </div>
                      <!-- tailwind -->
                       <div class="text-center bg-white shadow-md rounded-md p-4 w-full">
                        <h3 class="font-semibold text-xl text-blue-400">Tailwind</h3>
                        <p class="text-sm text-gray-600">CSS Framework</p>
                       </div>
                       <!-- wordpres -->
                        <div class="text-center bg-white shadow-md rounded-md p-4 w-full">
                            <h3 class="font-semibold text-xl text-purple-800">Wordpress</h3>
                            <p class="text-sm text-gray-600">CMS Option</p>
                        </div>
                        <!-- figma -->
                         <div class="text-center bg-white shadow-md rounded-md p-4 w-full">
                            <h3 class="font-semibold text-xl text-red-500">Figma</h3>
                            <p class="text-sm text-gray-600">UI/UX Design</p>
                         </div>
                         <!-- javascript -->
                          <div class="text-center bg-white shadow-md rounded-md p-4 w-full">
                            <h3 class="font-semibold text-xl text-orange-500">Javascript</h3>
                            <p class="text-sm text-gray-600">Core Language</p>
                          </div>
                 </div>
            </div>
           </section>

           <!-- packages -->
            <section>
                <div class="">
                    <!--  -->
                </div>
            </section>

            <!-- process -->
             <section class="py-4">
                <div class="container mx-auto px-4 bg-white rounded-md p-4">
                    <!-- title -->
                     <h3 class="text-center text-tm-red text-2xl font-medium">Hot It Works</h3>
                     <!-- four grids -->
                      <div class="grid grid-cols-1 md:grid-cols-4 mt-4 gap-4">
                        <!-- 1 -->
                         <div class="flex flex-col items-center">
                            <div class="bg-tm-red rounded-full h-9 w-9 flex items-center justify-center text-white font-semibold">
                                <p>1</p>
                            </div>
                            <div class="text-center">
                                <h3 class="font-semibold">Discovery & Planning</h3>
                                <p class="text-gray-600 text-sm">We analyze your business, competitors, and goals to create a strategic plan.</p>
                            </div>
                         </div>
                         <!-- 2 -->
                          <div class="flex flex-col items-center">
                            <div class="bg-tm-red rounded-full h-9 w-9 flex items-center justify-center text-white font-semibold">
                                <p>2</p>
                            </div>
                            <div class="text-center">
                                <h3 class="font-semibold">Design & Wireframing</h3>
                                <p class="text-gray-600 text-sm">We create mockups and wireframes for your approval before development.</p>
                            </div>
                          </div>
                          <!-- 3 -->
                           <div class="flex flex-col items-center">
                            <div class="bg-tm-red rounded-full h-9 w-9 flex items-center justify-center text-white font-semibold">
                                <p>3</p>
                            </div>
                            <div class="text-center">
                                <h3 class="font-semibold">Development & Testing</h3>
                                <p class="text-gray-600 text-sm">We build your website with clean code and test across all devices.</p>
                            </div>
                           </div>
                           <!-- 4 -->
                            <div class="flex flex-col items-center">
                                <div class="bg-tm-red rounded-full h-9 w-9 flex items-center justify-center text-white font-semibold">
                                    <p>4</p>
                                </div>
                                <div class="text-center">
                                    <h3 class="font-semibold">Launch & Support</h3>
                                    <p class="text-gray-600 text-sm">We deploy your website and provide training plus ongoing maintainance.</p>
                                </div>
                            </div>
                      </div>
                </div>
             </section>

             <!-- CTA -->
              <section class="py-4">
                <div class="container mx-auto px-4">
                    <!-- title -->
                     <div class="text-center space-y-2">
                        <h3 class="text-tm-red text-2xl font-medium">Ready to Launch Your Dream Website?</h3>
                        <p class="text-gray-600 mx-auto max-w-xl">Contact us today for a free consultation. We&apos;ll discuss 
                            your project and provided a detailed proposal.
                        </p>
                     </div>

                     <!-- form -->
                      <div class="">
                        <form action="" method="post"></form>
                      </div>

                     <!-- actions -->
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
                </div>
              </section>
    </div>
</template>

<style scoped>
.icon-red {
        filter: brightness(0) saturate(100%) invert(24%) sepia(88%) saturate(5065%) hue-rotate(355deg) brightness(95%) contrast(110%);
    }
</style>
