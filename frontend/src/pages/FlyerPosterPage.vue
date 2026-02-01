<template>
    <div class="py-8">
        <h3 class="text-center text-tm-red text-3xl">Flyers & Posters Design Services</h3>

        <!-- hero section -->
        <section class="">
            <div class="container px-4 mx-auto mt-4">
                <!-- left and right sections -->
                <div class="flex flex-col md:flex-row items-center gap-8">

                    <!-- left section -->
                    <div class="">
                        <!-- title -->
                        <div class="mx-auto max-w-3xl text-center">
                            <h3 class="font-semibold text-4xl text-tm-red">Eye-Catching Flyers & Posters That Get Noticed</h3>
                            <p class="text-sm text-gray-600 mt-4">Professional flyer and poster designs for events, promotions, 
                                marketing campaigns, and business announcements that capture attention and drive results.
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
                            <!-- Multiple Concepts -->
                            <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/check(1).png" alt="check" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">2-3 Design Concepts</span>
                            </div>

                            <!-- Unlimited Revisions -->
                            <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/revision.png" alt="revision" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">Unlimited Revisions</span>
                            </div>

                            <!-- Fast Delivery -->
                            <div class="flex items-center gap-2 bg-white rounded-full p-1">
                                <img src="/timing.png" alt="timing" width="23" class="icon-red">
                                <span class="text-gray-600 text-sm">24-48 Hour Delivery</span>
                            </div>
                        </div>

                        <!-- Types of Flyers -->
                        <div class="mt-6">
                            <h4 class="text-lg font-semibold text-gray-800 mb-3 text-center">We Design For:</h4>
                            <div class="flex flex-wrap justify-center gap-2">
                                <span class="bg-gray-100 px-3 py-1 rounded-full text-sm text-gray-700">Business Promotions</span>
                                <span class="bg-gray-100 px-3 py-1 rounded-full text-sm text-gray-700">Events & Parties</span>
                                <span class="bg-gray-100 px-3 py-1 rounded-full text-sm text-gray-700">Travel & Tourism</span>
                                <span class="bg-gray-100 px-3 py-1 rounded-full text-sm text-gray-700">Political Campaigns</span>
                                <span class="bg-gray-100 px-3 py-1 rounded-full text-sm text-gray-700">Product Launches</span>
                                <span class="bg-gray-100 px-3 py-1 rounded-full text-sm text-gray-700">Real Estate</span>
                            </div>
                        </div>
                    </div>

                    <!-- right section - Quote Form -->
                    <div class="bg-white rounded-md p-4 shadow-lg">
                        <form action="" method="post">
                            <!-- title -->
                            <h3 class="text-tm-red font-medium mb-2">Get Your Flyer Design Quote</h3>
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

                            <!-- Flyer Type -->
                            <div class="">
                                <label class="block mb-2 text-gray-600" for="flyer-type">Flyer/Poster Type</label>
                                <select class="rounded-md p-2 ring-1 ring-gray-600 outline-none w-full mb-2" name="flyer-type" id="flyer-type">
                                    <option value="">Select Type</option>
                                    <option value="business">Business Promotion</option>
                                    <option value="event">Event/Party</option>
                                    <option value="travel">Travel/Tourism</option>
                                    <option value="political">Political Campaign</option>
                                    <option value="product">Product Launch</option>
                                    <option value="real-estate">Real Estate</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>

                            <!-- Quantity -->
                            <div class="">
                                <label class="block mb-2 text-gray-600" for="quantity">How many designs?</label>
                                <select class="rounded-md p-2 ring-1 ring-gray-600 outline-none w-full mb-2" name="quantity" id="quantity">
                                    <option value="1">1 Flyer/Poster</option>
                                    <option value="2">2 Designs</option>
                                    <option value="3">3+ Designs</option>
                                    <option value="package">Full Package</option>
                                </select>
                            </div>

                            <!-- message -->
                            <div class="">
                                <label class="block mb-2 text-gray-600" for="message">Tell us about your project</label>
                                <textarea class="rounded-md p-2 ring-1 ring-gray-600 outline-none w-full mb-2" name="message" id="message" rows="3" placeholder="Event details, target audience, key message, etc."></textarea>
                            </div>

                            <!-- submit button -->
                            <div class="">
                                <button type="button" class="w-full bg-tm-red rounded-md p-2 text-white font-medium hover:bg-red-700 transition">
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

        <!-- Flyer Design Samples -->
        <section class="py-4">
            <div class="container mx-auto px-4 mt-6">
                <!-- title -->
                <div class="flex flex-col text-center mb-6">
                    <h3 class="text-tm-red text-3xl mb-2">Flyer & Poster Examples</h3>
                    <p class="text-gray-600">View some of our recent flyer and poster designs</p>
                </div>

                <!-- Tabs for different types -->
                <div class="flex justify-center mb-6">
                    <div class="inline-flex rounded-lg border border-gray-300 p-1">
                        <button @click="activeTab = 'all'" :class="['px-4 py-2 rounded-md text-sm font-medium transition', activeTab === 'all' ? 'bg-tm-red text-white' : 'text-gray-700 hover:text-tm-red']">
                            All
                        </button>
                        <button @click="activeTab = 'travel'" :class="['px-4 py-2 rounded-md text-sm font-medium transition', activeTab === 'travel' ? 'bg-tm-red text-white' : 'text-gray-700 hover:text-tm-red']">
                            Travel
                        </button>
                        <button @click="activeTab = 'political'" :class="['px-4 py-2 rounded-md text-sm font-medium transition', activeTab === 'political' ? 'bg-tm-red text-white' : 'text-gray-700 hover:text-tm-red']">
                            Political
                        </button>
                        <button @click="activeTab = 'business'" :class="['px-4 py-2 rounded-md text-sm font-medium transition', activeTab === 'business' ? 'bg-tm-red text-white' : 'text-gray-700 hover:text-tm-red']">
                            Business
                        </button>
                    </div>
                </div>

                <!-- Flyer Designs Grid -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <div v-for="(flyer, index) in filteredFlyers" :key="index" 
                         class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition-shadow duration-300">
                        <div class="relative overflow-hidden h-64">
                            <img :src="flyer.img" :alt="flyer.description" 
                                 class="w-full h-full object-cover hover:scale-105 transition-transform duration-500">
                            <div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/70 to-transparent p-4">
                                <span class="text-white text-sm font-medium">{{ flyer.type }}</span>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-semibold text-gray-800 mb-2">{{ flyer.title }}</h4>
                            <p class="text-gray-600 text-sm mb-3">{{ flyer.description }}</p>
                            <div class="flex justify-between items-center">
                                <span class="text-tm-red font-bold">${{ flyer.price }}</span>
                                <a href="#get-quotation" class="text-sm text-tm-red hover:underline font-medium">
                                    Order Similar
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- more button -->
                <div class="flex justify-center mt-8">
                    <button v-if="visibleCount < filteredFlyers.length" @click="loadMore" 
                            class="px-6 py-2 bg-tm-red text-white rounded-lg hover:bg-red-700 transition flex items-center gap-2">
                        <span>View More Designs</span>
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </button>
                </div>
            </div>
        </section>

        <!-- Flyer Design Packages -->
        <section id="view-pricing" class="py-4">
            <div class="container mx-auto px-4 mt-6 bg-tm-red rounded-xl p-8">
                <!-- title -->
                <div class="text-center mb-8">
                    <h3 class="text-3xl text-white mb-2">Flyer & Poster Design Packages</h3>
                    <p class="text-white/90">Choose the perfect package for your marketing needs</p>
                </div>

                <!-- packages -->
                <div class="grid md:grid-cols-3 gap-6">
                    <!-- Basic Flyer -->
                    <div class="bg-white p-6 rounded-lg shadow-lg">
                        <div class="text-center mb-6">
                            <h3 class="text-xl font-bold text-gray-800">Single Flyer</h3>
                            <div class="mt-4">
                                <span class="text-3xl font-bold text-tm-red">$25</span>
                                <span class="text-gray-600 ml-2">/ design</span>
                            </div>
                            <p class="text-gray-500 text-sm mt-2">Perfect for one-time events</p>
                        </div>
                        <div class="space-y-3">
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">1 Professional Flyer Design</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">2 Design Concepts</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">3 Revisions</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">24-48 Hour Delivery</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">Print-ready Files (PDF, JPG)</span>
                            </div>
                        </div>
                        <!-- order button -->
                        <div class="mt-6">
                            <button type="button" class="w-full bg-tm-red text-white rounded-lg py-3 font-medium hover:bg-red-700 transition">
                                Order Single Flyer
                            </button>
                        </div>
                    </div>

                    <!-- Popular Package -->
                    <div class="bg-white p-6 rounded-lg shadow-lg border-2 border-tm-red relative">
                        <div class="absolute -top-3 left-1/2 transform -translate-x-1/2">
                            <span class="bg-tm-red text-white px-4 py-1 rounded-full text-sm font-bold">MOST POPULAR</span>
                        </div>
                        <div class="text-center mb-6">
                            <h3 class="text-xl font-bold text-gray-800">Flyer Bundle</h3>
                            <div class="mt-4">
                                <span class="text-3xl font-bold text-tm-red">$100</span>
                                <span class="text-gray-600 ml-2">/ 5 designs</span>
                            </div>
                            <p class="text-gray-500 text-sm mt-2">Save 20% with bundle</p>
                        </div>
                        <div class="space-y-3">
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">5 Professional Flyer Designs</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">3 Concepts per Design</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">Unlimited Revisions</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">3-5 Day Delivery</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">All Source Files + Social Media Sizes</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">Free Basic Copywriting</span>
                            </div>
                        </div>
                        <!-- order button -->
                        <div class="mt-6">
                            <button type="button" class="w-full bg-tm-red text-white rounded-lg py-3 font-medium hover:bg-red-700 transition">
                                Order Flyer Bundle
                            </button>
                        </div>
                    </div>

                    <!-- Monthly Package -->
                    <div class="bg-white p-6 rounded-lg shadow-lg">
                        <div class="text-center mb-6">
                            <h3 class="text-xl font-bold text-gray-800">Monthly Design</h3>
                            <div class="mt-4">
                                <span class="text-3xl font-bold text-tm-red">$150</span>
                                <span class="text-gray-600 ml-2">/ month</span>
                            </div>
                            <p class="text-gray-500 text-sm mt-2">For ongoing marketing needs</p>
                        </div>
                        <div class="space-y-3">
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">10-15 Designs Monthly</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">Flyers, Posters, Social Media</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">Unlimited Revisions</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">Priority Support</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">Monthly Content Calendar</span>
                            </div>
                            <div class="flex items-start gap-2">
                                <img src="/check(1).png" alt="check" width="20" class="icon-red mt-1">
                                <span class="text-gray-700 text-sm">Storage for All Files</span>
                            </div>
                        </div>
                        <!-- order button -->
                        <div class="mt-6">
                            <button type="button" class="w-full bg-tm-red text-white rounded-lg py-3 font-medium hover:bg-red-700 transition">
                                Start Monthly Plan
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- How it works -->
        <section class="py-4">
            <div class="container mx-auto px-4 bg-white rounded-lg p-6 shadow-sm">
                <!-- title -->
                <h3 class="text-center text-tm-red font-medium text-2xl mb-8">How It Works</h3>
                <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                    <!-- 1 -->
                    <div class="text-center">
                        <div class="bg-tm-red rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-4">
                            <p class="text-white font-bold text-lg">1</p>
                        </div>
                        <div class="">
                            <h3 class="font-semibold text-lg mb-2">Share Your Needs</h3>
                            <p class="text-gray-600">Tell us about your event, audience, and vision</p>
                        </div>
                    </div>
                    <!-- 2 -->
                    <div class="text-center">
                        <div class="bg-tm-red rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-4">
                            <p class="text-white font-bold text-lg">2</p>
                        </div>
                        <div class="">
                            <h3 class="font-semibold text-lg mb-2">Design Concepts</h3>
                            <p class="text-gray-600">We create 2-3 design options for your review</p>
                        </div>
                    </div>
                    <!-- 3 -->
                    <div class="text-center">
                        <div class="bg-tm-red rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-4">
                            <p class="text-white font-bold text-lg">3</p>
                        </div>
                        <div class="">
                            <h3 class="font-semibold text-lg mb-2">Revisions</h3>
                            <p class="text-gray-600">We refine based on your feedback until perfect</p>
                        </div>
                    </div>
                    <!-- 4 -->
                    <div class="text-center">
                        <div class="bg-tm-red rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-4">
                            <p class="text-white font-bold text-lg">4</p>
                        </div>
                        <div class="">
                            <h3 class="font-semibold text-lg mb-2">Delivery</h3>
                            <p class="text-gray-600">Get print-ready files in all required formats</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA -->
        <section id="get-quotation" class="py-8">
            <div class="container mx-auto px-4">
                <!-- title -->
                <div class="text-center mb-8">
                    <h3 class="text-2xl font-bold text-tm-red">Ready for Flyers That Get Results?</h3>
                    <p class="text-gray-600 mt-2 max-w-2xl mx-auto">Contact us today for a free consultation and custom quote for your flyer or poster project.</p>
                </div>

                <!-- contact info cards -->
                <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                    <div class="bg-white p-6 rounded-lg shadow-md text-center">
                        <div class="bg-tm-red/10 w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-4">
                            <img src="/phone-solid-full.svg" alt="phone" width="24" class="icon-red">
                        </div>
                        <h4 class="font-semibold text-gray-800 mb-2">Call Us</h4>
                        <p class="text-tm-red font-medium">+254 748 244 583</p>
                        <p class="text-gray-500 text-sm mt-1">Mon-Fri, 9AM-6PM</p>
                    </div>
                    
                    <div class="bg-white p-6 rounded-lg shadow-md text-center">
                        <div class="bg-tm-red/10 w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-4">
                            <img src="/envelope-solid-full.svg" alt="email" width="24" class="icon-red">
                        </div>
                        <h4 class="font-semibold text-gray-800 mb-2">Email Us</h4>
                        <p class="text-tm-red font-medium">tmgrafixlab@gmail.com</p>
                        <p class="text-gray-500 text-sm mt-1">Response within 12 hours</p>
                    </div>
                    
                    <div class="bg-white p-6 rounded-lg shadow-md text-center">
                        <div class="bg-tm-red/10 w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-4">
                            <img src="/whatsapp.png" alt="whatsapp" width="24" class="icon-red">
                        </div>
                        <h4 class="font-semibold text-gray-800 mb-2">WhatsApp</h4>
                        <p class="text-tm-red font-medium">+254 748 244 583</p>
                        <p class="text-gray-500 text-sm mt-1">Quick chat support</p>
                    </div>
                </div>

                <!-- quick contact form -->
                <div class="max-w-2xl mx-auto">
                    <div class="bg-white rounded-xl shadow-lg p-6 md:p-8">
                        <h4 class="text-xl font-bold text-gray-800 mb-4 text-center">Quick Quote Request</h4>
                        <form class="space-y-4">
                            <div class="grid md:grid-cols-2 gap-4">
                                <input type="text" placeholder="Your Name" class="p-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent outline-none">
                                <input type="email" placeholder="Email Address" class="p-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent outline-none">
                            </div>
                            <div class="grid md:grid-cols-2 gap-4">
                                <select class="p-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent outline-none">
                                    <option value="">Select Flyer Type</option>
                                    <option value="event">Event Flyer</option>
                                    <option value="business">Business Promotion</option>
                                    <option value="travel">Travel Flyer</option>
                                    <option value="political">Political Poster</option>
                                </select>
                                <select class="p-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent outline-none">
                                    <option value="">Number of Designs</option>
                                    <option value="1">1 Design</option>
                                    <option value="2-5">2-5 Designs</option>
                                    <option value="5+">5+ Designs</option>
                                </select>
                            </div>
                            <textarea placeholder="Tell us about your project, target audience, key message, and any specific requirements..." 
                                      rows="4" class="w-full p-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent outline-none"></textarea>
                            <button type="button" class="w-full bg-tm-red text-white py-3 rounded-lg font-medium hover:bg-red-700 transition duration-300">
                                Get Free Quote & Consultation
                            </button>
                            <p class="text-center text-gray-500 text-sm">We'll respond with a custom quote within 24 hours</p>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>

<script>
export default {
    data() {
        return {
            activeTab: 'all',
            visibleCount: 6,
            flyers: [
                { 
                    img: '/Camp Dunda copyxd.jpg', 
                    title: 'Summer Beach Vacation', 
                    description: 'Eye-catching travel flyer for holiday packages',
                    type: 'travel', 
                    price: 25 
                },
                { 
                    img: '/21 SEPTEMBER NGONG HILLS HIKE and FUN.jpg', 
                    title: 'Adventure Hike Event', 
                    description: 'Event poster for outdoor activities',
                    type: 'travel', 
                    price: 25 
                },
                { 
                    img: '/Artboard 1.png', 
                    title: 'Political Campaign', 
                    description: 'Bold design for election campaigns',
                    type: 'political', 
                    price: 20 
                },
                { 
                    img: '/FAIBA MKONONI Final.png', 
                    title: 'Business Promotion', 
                    description: 'Professional business flyer',
                    type: 'business', 
                    price: 25 
                },
                { 
                    img: '/BENTECH.png', 
                    title: 'Tech Company Flyer', 
                    description: 'Modern design for technology business',
                    type: 'business', 
                    price: 25 
                },
                { 
                    img: '/Hon George Kibuku Wishes You Happy International youth day.jpg', 
                    title: 'Community Engagement', 
                    description: 'Flyer for community events',
                    type: 'political', 
                    price: 20 
                },
                { 
                    img: '/CROPCARE FLYERDFGH-01.jpg', 
                    title: 'Agriculture Product', 
                    description: 'Product promotion flyer',
                    type: 'business', 
                    price: 25 
                },
                { 
                    img: '/PASSION DRY CLEANERS ORG copy11.png', 
                    title: 'Service Business', 
                    description: 'Flyer for local service business',
                    type: 'business', 
                    price: 25 
                }
            ]
        }
    },
    computed: {
        filteredFlyers() {
            if (this.activeTab === 'all') {
                return this.flyers.slice(0, this.visibleCount);
            }
            return this.flyers
                .filter(flyer => flyer.type === this.activeTab)
                .slice(0, this.visibleCount);
        }
    },
    methods: {
        loadMore() {
            this.visibleCount += 3;
        }
    }
}
</script>

<style scoped>
.icon-red {
    filter: brightness(0) saturate(100%) invert(24%) sepia(88%) saturate(5065%) hue-rotate(355deg) brightness(95%) contrast(110%);
}
</style>
