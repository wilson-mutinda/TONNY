<template>
    <div class="py-8">
        <!-- title -->
         <h3 class="text-center text-tm-red text-3xl">Flyers & Posters Design Services</h3>

         <!-- header -->
          <section class="">
            <div class="container px-4 mx-auto mt-4">
                <!-- right and left sections -->
                 <div class="flex flex-col md:flex-row items-center gap-8">
                    <!-- left section -->
                     <div class="">
                        <!-- title -->
                         <div class="mx-auto max-w-3xl text-center">
                            <h3 class="font-semibold text-4xl text-tm-red">Eye-Catching Flyers & Posters That Get Noticed</h3>
                            <p class="text-sm text-gray-600 mt-4">Professional flyer and poster designs for events, promotions, marketing campaigns, and business 
                                announcements that capture attention and drive results
                            </p>
                         </div>

                         <!-- buttons -->
                          <div class="flex items-center justify-center mt-4 gap-4">
                            
                            <a href="#flyer-pricing" class="rounded-full bg-tm-red px-4 py-2 font-medium text-white hover:text-tm-red hover:bg-transparent ring-1 hover:ring-tm-red">
                                View Pricing
                            </a>

                            <a href="#flyer-qoutation" class="text-tm-red font-medium px-4 py-2 ring-1 rounded-full ring-tm-red hover:text-white hover:bg-tm-red">
                                Get Quotation
                            </a>
                          </div>

                          <!-- actions -->
                           <div class="grid grid-cols-1 md:grid-cols-3 mt-4 gap-4">

                            <!-- 3 logo concepts -->
                             <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/check(1).png" alt="check" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">3 Design Concepts</span>
                             </div>

                             <!-- unlimited revisions -->
                              <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/revision.png" alt="revision" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">Unlimited Revisions</span>
                              </div>

                             <!-- 5 day delivery -->
                              <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/timing.png" alt="timing" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">24-48 Hour Delivery</span>
                              </div>
                           </div>

                           <!-- types of designs -->
                            <div class="">
                                <h3 class="font-semibold mb-3 text-center mt-4">We Design For:</h3>
                                <div class="grid grid-cols-1 md:grid-cols-3 text-center gap-4">
                                    <div class="bg-tm-red rounded-full px-4 py-1 text-white flex items-center gap-1">
                                        <img src="/period.png" alt="dot" class="w-4 h-4 invert">
                                        <p>Business Promotions</p>
                                    </div>
                                    <div class="bg-tm-red rounded-full px-4 py-1 text-white flex items-center gap-1">
                                        <img src="/period.png" alt="dot" class="w-4 h-4 invert">
                                        <p>Events & Parties</p>
                                    </div>
                                    <div class="bg-tm-red rounded-full px-4 py-1 text-white flex items-center gap-1">
                                        <img src="/period.png" alt="dot" class="w-4 h-4 invert">
                                        <p>Travel & Tourism</p>
                                    </div>
                                    <div class="bg-tm-red rounded-full px-4 py-1 text-white flex items-center gap-1">
                                        <img src="/period.png" alt="dot" class="w-4 h-4 invert">
                                        <p>Political Campaigns</p>
                                    </div>
                                    <div class="bg-tm-red rounded-full px-4 py-1 text-white flex items-center gap-1">
                                        <img src="/period.png" alt="dot" class="w-4 h-4 invert">
                                        <p>Product Launches</p>
                                    </div>
                                    <div class="bg-tm-red rounded-full px-4 py-1 text-white flex items-center gap-1">
                                        <img src="/period.png" alt="dot" class="w-4 h-4 invert">
                                        <p>Real Estate</p>
                                    </div>
                                </div>
                            </div>
                     </div>
                     <!-- right section -->
                      <div class="bg-white rounded-md p-4">
                        <form action="" method="post">
                            <!-- title -->
                             <div class="">
                                <h3 class="text-tm-red font-medium mb-2">Get Your Flyer Design Qoutes</h3>
                                <p class="text-gray-700 text-sm">Fill this quick form and we'll get back to 
                                    you within 24-hours with a custom quote.
                                </p>
                             </div>

                             <!-- name -->
                              <div class="">
                                <label class="block mt-2 text-gray-600" for="name">Your Name</label>
                                <input class="rounded-md p-2 w-full mt-2 outline-none ring-1 ring-gray-500 hover:ring-tm-red" type="text" name="name" id="name">
                              </div>
                              <!-- email address -->
                               <div class="">
                                <label class="block mt-2 text-gray-600" for="email">Email Address</label>
                                <input class="rounded-md p-2 w-full mt-2 outline-none ring-1 ring-gray-500 hover:ring-tm-red" type="email" name="email" id="email">
                               </div>
                               <!-- flyer/poster type -->
                                <div class="">
                                    <label class="block mt-2 text-gray-600" for="flyer">Flyer/Poster Type</label>
                                    <select class="rounded-md p-2 w-full mt-2 outline-none ring-1 ring-gray-500 hover:ring-tm-red" name="flyer" id="flyer">
                                        <option value="">Select Type</option>
                                        <option value="business-promotion">Business Promotion</option>
                                        <option value="events/party">Events/Party</option>
                                        <option value="travel/tourism">Travel/Tourism</option>
                                        <option value="political-campaign">Political Campaign</option>
                                        <option value="product-launch">Product Launch</option>
                                        <option value="real-estate">Real Estate</option>
                                        <option value="other">Other</option>
                                    </select>
                                </div>
                                <!-- amount -->
                                 <div class="">
                                    <label class="block mt-2 text-gray-600" for="amount">How many designs?</label>
                                    <select class="rounded-md p-2 w-full mt-2 outline-none ring-1 ring-gray-500 hover:ring-tm-red" name="amount" id="amount">
                                        <option value="1">1 Flyer/Poster</option>
                                        <option value="2">2 Designs</option>
                                        <option value="3">3+ Designs</option>
                                        <option value="package">Full Package</option>
                                    </select>
                                 </div>
                                 <!-- message -->
                                  <div class="">
                                    <label class="block mt-2 text-gray-600" for="message">Tell us about your project</label>
                                    <textarea class="rounded-md p-2 w-full mt-2 outline-none ring-1 ring-gray-500 hover:ring-tm-red" name="message" id="message" rows="4"></textarea>
                                  </div>
                                  <!-- button -->
                                   <div class="text-white text-center bg-tm-red rounded-md w-full p-2 mt-3">
                                    <button type="button" class="">
                                        Request Quote
                                    </button>
                                   </div>
                                   <!-- action -->
                                    <div class="text-gray-600 text-center mt-3">
                                        <p>We'll contact you within 24 hours</p>
                                    </div>
                        </form>
                      </div>
                 </div>
            </div>
          </section>

          <!-- samples -->
           <section></section>

           <!-- packages -->
            <section id="flyer-pricing" class="py-4">
                <div class="container mx-auto px-4 bg-tm-red p-4 rounded-md">
                    <!-- title -->
                     <div class="text-center text-white">
                        <h3 class="font-medium text-2xl mb-2">Flyer & Poster Design Packages</h3>
                        <p class="text-sm mb-2">Chose the perfect package for your marketing needs</p>
                     </div>
                     <!-- three cards/grids -->
                      <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mt-8">
                        <!-- first grid -->
                         <div class="bg-white rounded-md p-4">
                            <!-- title -->
                             <div class="text-center mb-4 space-y-2">
                                <h3 class="font-semibold">Single Flyer</h3>
                                <p class="text-gray-600 text-sm"><span class="text-tm-red font-semibold text-xl">$25</span> / design</p>
                                <p class="text-gray-600">perfect for one-time events</p>
                             </div>
                             
                             <!-- packages -->
                              <div class="space-y-2 mt-2">
                                <div class="flex items-center gap-2">
                                    <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                    <span>1 Professional Flyer Design</span>
                                </div>
                                <div class="flex items-center gap-2">
                                    <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                    <span>2 Design Concepts</span>
                                </div>
                                <div class="flex items-center gap-2">
                                    <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                    <span>3 Revisions</span>
                                </div>
                                <div class="flex items-center gap-2">
                                    <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                    <span>24-48 Hour Delivery</span>
                                </div>
                                <div class="flex items-center gap-2">
                                    <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                    <span>Print-ready Files (PDF, JPG)</span>
                                </div>
                              </div>

                              <!-- action button -->
                               <div class="text-center text-white bg-tm-red rounded-md p-2 mt-4">
                                <button type="button">
                                    Order Single Flyer
                                </button>
                               </div>
                         </div>
                         <!-- second grid -->
                          <div class="bg-white rounded-md p-4">
                            <!-- title -->
                             <div class="text-center mb-4 space-y-2">
                                <h3 class="font-semibold">Flyer Bundle</h3>
                                <p class="text-gray-600 text-sm"><span class="text-tm-red font-semibold text-xl">$100</span> / 5 designs</p>
                                <p class="text-gray-600">Save 20% with bundle</p>
                             </div>

                             <!-- packages -->
                              <div class="">
                                <div class="flex items-center gap-2">
                                    <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                    <span>5 Professional Flyer Designs</span>
                                </div>
                                <div class="flex items-center gap-2">
                                    <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                    <span>3 Concepts per design</span>
                                </div>
                                <div class="flex items-center gap-2">
                                    <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                    <span>Unlimited Revisions</span>
                                </div>
                                <div class="flex items-center gap-2">
                                    <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                    <span>3-5 Day Delivery</span>
                                </div>
                              </div>

                              <!-- order button -->
                               <div class="text-center text-white bg-tm-red rounded-md p-2 mt-4">
                                <button type="button">
                                    Order Flyer Bundle
                                </button>
                               </div>
                          </div>
                          <!-- third grid -->
                           <div class="bg-white rounded-md p-4">
                            <!-- title -->
                             <div class="text-center mb-4 space-y-2">
                                <h3 class="font-semibold">Monthly Design</h3>
                                <p class="text-gray-600 text-sm"><span class="text-tm-red font-semibold text-xl">$150</span> / month</p>
                                <p class="text-gray-600">For ongoing marketing needs</p>
                             </div>
                             <!-- packages -->
                              <div class="">
                                <div class="">
                                    <div class="flex items-center gap-2">
                                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                        <span>10-15 Designs Mobnthly</span>
                                    </div>
                                    <div class="flex items-center gap-2">
                                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                        <span>Flyers, Posters, Social Media</span>
                                    </div>
                                    <div class="flex items-center gap-2">
                                        <img src="/check(1).png" alt="check" width="20" class="icon-red">
                                        <span>Unlimited Decisions</span>
                                    </div>
                                </div>
                                <!-- order button -->
                                 <div class="text-center text-white bg-tm-red rounded-md p-2 mt-4">
                                    <button type="button">
                                        Start Monthly Plan
                                    </button>
                                 </div>
                              </div>
                           </div>
                      </div>
                </div>
            </section>

            <!-- hwo it works -->
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
                                <h3 class="font-semibold">Share Your Needs</h3>
                                <p class="text-gray-600 text-sm">Tell us your event, audience, and vision</p>
                            </div>
                         </div>
                         <!-- 2 -->
                          <div class="flex flex-col items-center">
                            <div class="bg-tm-red rounded-full h-9 w-9 flex items-center justify-center text-white font-semibold">
                                <p>2</p>
                            </div>
                            <div class="text-center">
                                <h3 class="font-semibold">Design Concepts</h3>
                                <p class="text-gray-600 text-sm">We create 2-3 design options for your review</p>
                            </div>
                          </div>
                          <!-- 3 -->
                           <div class="flex flex-col items-center">
                            <div class="bg-tm-red rounded-full h-9 w-9 flex items-center justify-center text-white font-semibold">
                                <p>3</p>
                            </div>
                            <div class="text-center">
                                <h3 class="font-semibold">Revisions</h3>
                                <p class="text-gray-600 text-sm">We refine based on your feedback untill perfect</p>
                            </div>
                           </div>
                           <!-- 4 -->
                            <div class="flex flex-col items-center">
                                <div class="bg-tm-red rounded-full h-9 w-9 flex items-center justify-center text-white font-semibold">
                                    <p>4</p>
                                </div>
                                <div class="text-center">
                                    <h3 class="font-semibold">Delivery</h3>
                                    <p class="text-gray-600 text-sm">Get print-ready files in all required formats</p>
                                </div>
                            </div>
                      </div>
                </div>
             </section>

             <!-- CTA -->
              <section id="flyer-qoutation" class="py-4">
                <div class="container mx-auto px-4">
                    <!-- title -->
                     <div class="text-center space-y-2">
                        <h3 class="text-tm-red font-medium text-2xl">Ready for Flyers That Get Results?</h3>
                        <p class="text-gray-600 text-sm">Contact us today for a free consultation and custom quote for your 
                            flyer or poster project
                        </p>
                     </div>

                     <!-- form -->
                    <div class="bg-white w-full mx-auto max-w-2xl mt-4 p-6 rounded-md shadow-sm">
                        <form action="" method="post" class="space-y-4">

                            <!-- title -->
                            <h3 class="text-center font-semibold text-tm-red text-xl">
                            Quick Quote Request
                            </h3>

                            <!-- name & email -->
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <input
                                class="w-full rounded-md p-3 outline-none ring-1 ring-gray-300 focus:ring-tm-red"
                                type="text"
                                name="name"
                                placeholder="Your Name"
                            />

                            <input
                                class="w-full rounded-md p-3 outline-none ring-1 ring-gray-300 focus:ring-tm-red"
                                type="email"
                                name="email"
                                placeholder="Email Address"
                            />
                            </div>

                            <!-- flyer & quantity -->
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <select
                                class="w-full rounded-md p-3 outline-none ring-1 ring-gray-300 focus:ring-tm-red"
                                name="flyers"
                            >
                                <option value="">Select Flyer Type</option>
                                <option value="business-promotion">Business Promotion</option>
                                <option value="events">Events / Party</option>
                                <option value="travel">Travel / Tourism</option>
                                <option value="political">Political Campaign</option>
                                <option value="product">Product Launch</option>
                                <option value="real-estate">Real Estate</option>
                                <option value="other">Other</option>
                            </select>

                            <select
                                class="w-full rounded-md p-3 outline-none ring-1 ring-gray-300 focus:ring-tm-red"
                                name="quantity"
                            >
                                <option value="1">1 Flyer / Poster</option>
                                <option value="2">2 Designs</option>
                                <option value="3">3+ Designs</option>
                                <option value="package">Full Package</option>
                            </select>
                            </div>

                            <!-- message -->
                            <textarea
                            class="w-full rounded-md p-3 outline-none ring-1 ring-gray-300 focus:ring-tm-red"
                            rows="4"
                            name="message"
                            placeholder="Tell us about your project, target audience, key message, and any specific requirements."
                            ></textarea>

                            <!-- button -->
                            <button
                            type="button"
                            class="w-full bg-tm-red text-white rounded-md py-3 font-medium transition"
                            >
                            Get Free Quote & Consultation
                            </button>

                            <!-- action note -->
                            <p class="text-gray-600 text-sm text-center">
                            We&apos;ll respond with a custom quote within 24 hours
                            </p>

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

<style scoped>
.icon-red {
        filter: brightness(0) saturate(100%) invert(24%) sepia(88%) saturate(5065%) hue-rotate(355deg) brightness(95%) contrast(110%);
    }
</style>
