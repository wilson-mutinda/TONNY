<template>
  <div class="bg-tm-gray min-h-screen">
    <!-- Header -->
    <Header />
    
    <!-- Hero Section with Immediate CTA -->
    <section class="pt-24 pb-12 px-4 md:pt-32 md:pb-16">
      <div class="container mx-auto max-w-6xl">
        <div class="grid lg:grid-cols-2 gap-8 items-center">
          <!-- Left: Content -->
          <div>
            <div class="inline-flex items-center gap-2 bg-tm-red/10 text-tm-red px-3 py-1 rounded-full text-sm font-medium mb-4">
              <span>Premium Service</span>
            </div>
            <h1 class="text-3xl md:text-4xl lg:text-5xl font-bold text-gray-900 mb-4">
              Logo Design That
              <span class="text-tm-red">Makes Your Brand Memorable</span>
            </h1>
            <p class="text-lg text-gray-600 mb-6">
              Professional logo design that captures your brand's essence and makes a lasting impression on your audience.
            </p>
            
            <!-- Quick Action Buttons -->
            <div class="flex flex-wrap gap-4 mb-8">
              <a href="#pricing" 
                 class="px-6 py-3 bg-tm-red text-white font-semibold rounded-lg hover:bg-red-700 transition shadow-lg hover:shadow-xl">
                View Pricing
              </a>
              <a href="#contact-form" 
                 class="px-6 py-3 bg-white text-gray-800 font-semibold rounded-lg border-2 border-gray-200 hover:border-tm-red transition hover:shadow-lg">
                Get Free Quote
              </a>
            </div>
            
            <!-- Trust Indicators -->
            <div class="flex flex-wrap gap-6">
              <div class="flex items-center gap-2">
                <div class="w-8 h-8 bg-green-100 rounded-full flex items-center justify-center">
                  <svg class="w-4 h-4 text-green-600" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                  </svg>
                </div>
                <span class="text-sm font-medium">3 Logo Concepts</span>
              </div>
              <div class="flex items-center gap-2">
                <div class="w-8 h-8 bg-blue-100 rounded-full flex items-center justify-center">
                  <svg class="w-4 h-4 text-blue-600" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z" clip-rule="evenodd"/>
                  </svg>
                </div>
                <span class="text-sm font-medium">5-Day Delivery</span>
              </div>
              <div class="flex items-center gap-2">
                <div class="w-8 h-8 bg-purple-100 rounded-full flex items-center justify-center">
                  <svg class="w-4 h-4 text-purple-600" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M2.166 4.999A11.954 11.954 0 0010 1.944 11.954 11.954 0 0017.834 5c.11.65.166 1.32.166 2.001 0 5.225-3.34 9.67-8 11.317C5.34 16.67 2 12.225 2 7c0-.682.057-1.35.166-2.001zm11.541 3.708a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/>
                  </svg>
                </div>
                <span class="text-sm font-medium">Unlimited Revisions</span>
              </div>
            </div>
          </div>
          
          <!-- Right: Quick Contact Form -->
          <div class="bg-white rounded-2xl shadow-xl p-6 md:p-8">
            <h3 class="text-xl font-bold text-gray-900 mb-4">Get Your Logo Design Quote</h3>
            <p class="text-gray-600 text-sm mb-6">Fill this quick form and we'll get back to you within 2 hours with a custom quote.</p>
            
            <form @submit.prevent="submitQuoteRequest" class="space-y-4">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Your Name</label>
                <input type="text" v-model="form.name" required 
                       class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent">
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Email Address</label>
                <input type="email" v-model="form.email" required 
                       class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent">
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Phone Number</label>
                <input type="tel" v-model="form.phone" 
                       class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent">
              </div>
              
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Tell us about your business</label>
                <textarea v-model="form.message" rows="3"
                          class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent"
                          placeholder="What does your business do? Any specific ideas for your logo?"></textarea>
              </div>
              
              <button type="submit" 
                      class="w-full bg-tm-red text-white py-3 rounded-lg font-semibold hover:bg-red-700 transition shadow-md hover:shadow-lg">
                Get Free Quote Now
              </button>
              
              <p class="text-xs text-gray-500 text-center">We'll contact you within 2 hours. No spam, guaranteed.</p>
            </form>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Portfolio Preview - Quick View -->
    <section class="py-12 px-4 bg-white">
      <div class="container mx-auto max-w-6xl">
        <div class="text-center mb-8">
          <h2 class="text-2xl md:text-3xl font-bold text-gray-900 mb-4">Logo Design Examples</h2>
          <p class="text-gray-600 max-w-2xl mx-auto">See some of our recent logo designs. Each tells a unique brand story.</p>
        </div>
        
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
          <div v-for="logo in logos" :key="logo.id" 
               class="bg-gray-50 rounded-xl p-4 hover:shadow-lg transition-shadow duration-300">
            <img :src="logo.img" :alt="logo.title" 
                 class="w-full h-32 object-contain mb-3">
            <p class="text-sm font-medium text-gray-800">{{ logo.title }}</p>
            <p class="text-xs text-gray-500">{{ logo.industry }}</p>
          </div>
        </div>
        
        <div class="text-center">
          <a href="/portfolio#logos" 
             class="inline-flex items-center text-tm-red font-semibold hover:underline">
            View All Logo Designs →
          </a>
        </div>
      </div>
    </section>
    
    <!-- Pricing Section - Simple & Clear -->
    <section id="pricing" class="py-12 px-4 bg-gray-50">
      <div class="container mx-auto max-w-4xl">
        <div class="text-center mb-10">
          <h2 class="text-2xl md:text-3xl font-bold text-gray-900 mb-4">Logo Design Packages</h2>
          <p class="text-gray-600">Choose the perfect package for your needs. All include source files and commercial rights.</p>
        </div>
        
        <div class="grid md:grid-cols-2 gap-8">
          <!-- Basic Logo Package -->
          <div class="bg-white rounded-2xl shadow-lg p-6 border border-gray-200">
            <div class="text-center mb-6">
              <h3 class="text-xl font-bold text-gray-900 mb-2">Basic Logo</h3>
              <div class="text-3xl font-bold text-gray-900">$50</div>
              <p class="text-gray-500 text-sm">One-time payment</p>
            </div>
            
            <ul class="space-y-3 mb-6">
              <li class="flex items-center">
                <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                </svg>
                <span>1 Logo Concept</span>
              </li>
              <li class="flex items-center">
                <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                </svg>
                <span>2 Revisions</span>
              </li>
              <li class="flex items-center">
                <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                </svg>
                <span>3-Day Delivery</span>
              </li>
              <li class="flex items-center">
                <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                </svg>
                <span>Source Files (AI, PNG, JPG)</span>
              </li>
            </ul>
            
            <a href="#contact-form" 
               class="block w-full bg-gray-800 text-white text-center py-3 rounded-lg font-semibold hover:bg-gray-900 transition">
              Order Basic Logo
            </a>
          </div>
          
          <!-- Premium Logo Package -->
          <div class="bg-white rounded-2xl shadow-xl p-6 border-2 border-tm-red relative">
            <div class="absolute -top-3 left-1/2 transform -translate-x-1/2">
              <span class="bg-tm-red text-white px-3 py-1 rounded-full text-sm font-semibold">Most Popular</span>
            </div>
            
            <div class="text-center mb-6">
              <h3 class="text-xl font-bold text-gray-900 mb-2">Premium Logo</h3>
              <div class="text-3xl font-bold text-gray-900">$150</div>
              <p class="text-gray-500 text-sm">One-time payment</p>
            </div>
            
            <ul class="space-y-3 mb-6">
              <li class="flex items-center">
                <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                </svg>
                <span><strong>3 Logo Concepts</strong></span>
              </li>
              <li class="flex items-center">
                <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                </svg>
                <span>Unlimited Revisions</span>
              </li>
              <li class="flex items-center">
                <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                </svg>
                <span>5-Day Delivery</span>
              </li>
              <li class="flex items-center">
                <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                </svg>
                <span>All Source Files + Brand Guidelines</span>
              </li>
              <li class="flex items-center">
                <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"/>
                </svg>
                <span>Social Media Kit</span>
              </li>
            </ul>
            
            <a href="#contact-form" 
               class="block w-full bg-tm-red text-white text-center py-3 rounded-lg font-semibold hover:bg-red-700 transition shadow-md hover:shadow-lg">
              Order Premium Logo
            </a>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Process - Simple Steps -->
    <section class="py-12 px-4 bg-white">
      <div class="container mx-auto max-w-4xl">
        <h2 class="text-2xl font-bold text-center text-gray-900 mb-10">How It Works</h2>
        <div class="grid md:grid-cols-4 gap-6">
          <div class="text-center">
            <div class="w-12 h-12 bg-tm-red text-white rounded-full flex items-center justify-center font-bold text-xl mx-auto mb-4">1</div>
            <h3 class="font-bold text-gray-900 mb-2">Brief</h3>
            <p class="text-gray-600 text-sm">Tell us about your brand</p>
          </div>
          <div class="text-center">
            <div class="w-12 h-12 bg-tm-red text-white rounded-full flex items-center justify-center font-bold text-xl mx-auto mb-4">2</div>
            <h3 class="font-bold text-gray-900 mb-2">Design</h3>
            <p class="text-gray-600 text-sm">We create logo concepts</p>
          </div>
          <div class="text-center">
            <div class="w-12 h-12 bg-tm-red text-white rounded-full flex items-center justify-center font-bold text-xl mx-auto mb-4">3</div>
            <h3 class="font-bold text-gray-900 mb-2">Revise</h3>
            <p class="text-gray-600 text-sm">You provide feedback</p>
          </div>
          <div class="text-center">
            <div class="w-12 h-12 bg-tm-red text-white rounded-full flex items-center justify-center font-bold text-xl mx-auto mb-4">4</div>
            <h3 class="font-bold text-gray-900 mb-2">Deliver</h3>
            <p class="text-gray-600 text-sm">Get final files</p>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Final CTA Section -->
    <section id="contact-form" class="py-12 px-4 bg-gradient-to-r from-tm-red to-red-600">
      <div class="container mx-auto max-w-4xl text-center text-white">
        <h2 class="text-2xl md:text-3xl font-bold mb-4">Ready for a Logo That Stands Out?</h2>
        <p class="text-lg mb-6 max-w-2xl mx-auto">Contact us today for a free consultation and quote.</p>
        
        <div class="bg-white rounded-2xl p-6 md:p-8 max-w-2xl mx-auto shadow-2xl">
          <h3 class="text-xl font-bold text-gray-900 mb-4">Send us a quick message</h3>
          
          <div class="grid md:grid-cols-2 gap-4 mb-4">
            <input type="text" placeholder="Your Name" 
                   class="px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent">
            <input type="email" placeholder="Email Address" 
                   class="px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-tm-red focus:border-transparent">
          </div>
          
          <textarea placeholder="Tell us about your logo project..." rows="3"
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg mb-4 focus:ring-2 focus:ring-tm-red focus:border-transparent"></textarea>
          
          <button type="button" 
                  class="w-full bg-tm-red text-white py-3 rounded-lg font-semibold hover:bg-red-700 transition text-lg">
            Send Message & Get Quote
          </button>
        </div>
        
        <div class="mt-8 flex flex-wrap justify-center gap-6">
          <div class="flex items-center gap-2">
            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
              <path fill-rule="evenodd" d="M2 3.5A1.5 1.5 0 013.5 2h1.148a1.5 1.5 0 011.465 1.175l.716 3.223a1.5 1.5 0 01-1.052 1.767l-.933.267c-.41.117-.643.555-.48.95a11.542 11.542 0 006.254 6.254c.395.163.833-.07.95-.48l.267-.933a1.5 1.5 0 011.767-1.052l3.223.716A1.5 1.5 0 0118 15.352V16.5a1.5 1.5 0 01-1.5 1.5H15c-1.149 0-2.263-.15-3.326-.43A13.022 13.022 0 012.43 8.326 13.019 13.019 0 012 5V3.5z" clip-rule="evenodd"/>
            </svg>
            <span>Call: +254 700 000 000</span>
          </div>
          <div class="flex items-center gap-2">
            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
              <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"/>
              <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"/>
            </svg>
            <span>Email: info@tmgrafixlab.com</span>
          </div>
          <div class="flex items-center gap-2">
            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
              <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z" clip-rule="evenodd"/>
            </svg>
            <span>Response: Within 2 hours</span>
          </div>
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

export default {
  components: {
    Header,
    Footer
  },
  data() {
    return {
      form: {
        name: '',
        email: '',
        phone: '',
        message: ''
      },
      logos: [
        { id: 1, img: '/Logo1.png', title: 'Law Firm Logo', industry: 'Legal Services' },
        { id: 2, img: '/Logo2.png', title: 'Bookshop Logo', industry: 'Retail' },
        { id: 3, img: '/Logo3.png', title: 'Fashion Brand', industry: 'Fashion' },
        { id: 4, img: '/Logo4.png', title: 'Beauty Salon', industry: 'Beauty' },
        { id: 5, img: '/Logo5.png', title: 'Photography', industry: 'Creative' },
        { id: 6, img: '/Logo6.png', title: 'Sports Brand', industry: 'Sports' },
        { id: 7, img: '/Logo7.png', title: 'Farm Product', industry: 'Agriculture' },
        { id: 8, img: '/Logo8.png', title: 'Internet Provider', industry: 'Technology' }
      ]
    };
  },
  methods: {
    submitQuoteRequest() {
      // Handle form submission
      console.log('Quote request submitted:', this.form);
      alert('Thank you! We\'ll contact you within 2 hours with your quote.');
    }
  }
};
</script>