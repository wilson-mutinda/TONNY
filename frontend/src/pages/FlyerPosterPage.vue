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
                            
                            <a href="#" class="rounded-full bg-tm-red px-4 py-2 font-medium text-white hover:text-tm-red hover:bg-transparent ring-1 hover:ring-tm-red">
                                View Pricing
                            </a>

                            <a href="#" class="text-tm-red font-medium px-4 py-2 ring-1 rounded-full ring-tm-red hover:text-white hover:bg-tm-red">
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
            <section></section>

            <!-- hwo it works -->
             <section></section>

             <!-- CTA -->
              <section></section>
    </div>
</template>