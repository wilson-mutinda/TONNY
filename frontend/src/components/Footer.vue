<template>
    <div class="">
        <!-- footer section -->
        <section class="bg-gradient-to-b from-tm-red to-tm-black py-6 md:py-8">
            <!-- container -->
            <div class="container px-4 mx-auto grid grid-cols-1 md:grid-cols-4 gap-8 md:gap-12">
                <!-- logo & description -->
                <div class="">
                    <img src="/TM LOGO2.png" alt="logo" width="280" class="mb-4">
                    <p class="text-tm-gray text-sm leading-relaxed">
                        Professional design services for businesses. Creating memorable brands, 
                        engaging social media content, and stunning marketing materials.
                    </p>
                </div>

                <!-- quick links -->
                <div class="">
                    <h4 class="text-white font-bold mb-4 text-lg">Quick Links</h4>
                    <div class="grid grid-cols-2 gap-3">
                        <!-- Column 1 -->
                        <div class="flex flex-col gap-3">
                            <RouterLink to="/" class="text-tm-gray hover:text-white font-medium transition-colors text-sm hover:underline">
                                Home
                            </RouterLink>
                            <RouterLink to="/about" class="text-tm-gray hover:text-white font-medium transition-colors text-sm hover:underline">
                                About
                            </RouterLink>
                            <RouterLink to="/services" class="text-tm-gray hover:text-white font-medium transition-colors text-sm hover:underline">
                                Services
                            </RouterLink>
                            <RouterLink to="/portfolio" class="text-tm-gray hover:text-white font-medium transition-colors text-sm hover:underline">
                                Portfolio
                            </RouterLink>
                        </div>
                        
                        <!-- Column 2 -->
                        <div class="flex flex-col gap-3">
                            <RouterLink to="/services/logo-design" class="text-tm-gray hover:text-white font-medium transition-colors text-sm hover:underline">
                                Logo Design
                            </RouterLink>
                            <RouterLink to="/services/social-media-design" class="text-tm-gray hover:text-white font-medium transition-colors text-sm hover:underline">
                                Social Media
                            </RouterLink>
                            <RouterLink to="/services/pricing" class="text-tm-gray hover:text-white font-medium transition-colors text-sm hover:underline">
                                Pricing
                            </RouterLink>
                            <RouterLink to="/contact-us" class="text-tm-gray hover:text-white font-medium transition-colors text-sm hover:underline">
                                Contact
                            </RouterLink>
                        </div>
                    </div>
                </div>

                <!-- contact -->
                <div class="">
                    <h4 class="text-tm-gray font-bold mb-4 text-lg">Contact Info</h4>
                    <div class="flex flex-col gap-4">

                        <!-- address -->
                        <div class="flex items-start gap-3">
                            <div class="w-6 h-6 flex items-center justify-center mt-0.5">
                                <img src="/Asset 11.png" alt="address" width="20">
                            </div>
                            <span class="text-tm-gray text-sm">Nairobi, Kenya</span>
                        </div>

                        <!-- phone -->
                        <div class="flex items-start gap-3">
                            <div class="w-6 h-6 flex items-center justify-center mt-0.5">
                                <img src="/phone-solid-full.svg" alt="phone" width="16" class="bg-white rounded-full p-1">
                            </div>
                            <span class="text-tm-gray text-sm">+254 748 244 583</span>
                        </div>

                        <!-- whatsapp -->
                        <a href="https://wa.me/254748244583" target="_blank" rel="noopener noreferrer" 
                           class="flex items-start gap-3 hover:opacity-80 transition-opacity">
                            <div class="w-6 h-6 flex items-center justify-center mt-0.5">
                                <img src="/Asset 8.png" alt="whatsapp" width="20">
                            </div>
                            <span class="text-tm-gray text-sm">WhatsApp: +254 748 244 583</span>
                        </a>

                        <!-- email -->
                        <a href="mailto:tmgrafixlab@gmail.com" 
                           class="flex items-start gap-3 hover:opacity-80 transition-opacity">
                            <div class="w-6 h-6 flex items-center justify-center mt-0.5">
                                <img src="/envelope-solid-full.svg" alt="email" width="16" class="bg-white rounded-full p-1">
                            </div>
                            <span class="text-tm-gray text-sm">tmgrafixlab@gmail.com</span>
                        </a>
                    </div>
                </div>

                <!-- follow us -->
                <div class="">
                    <h4 class="text-tm-gray font-bold mb-4 text-lg">Follow Us</h4>
                    <p class="text-tm-gray text-sm mb-4">Stay updated with our latest work and offers</p>
                    
                    <div class="flex flex-wrap gap-3 items-center">
                        <!-- fb -->
                        <a href="https://facebook.com/Tmgrafixlab" target="_blank" rel="noopener noreferrer" 
                           class="bg-white/10 hover:bg-white/20 rounded-lg p-2 transition-all">
                            <img src="/Asset 3.png" alt="fb" class="w-6 h-6">
                        </a>
                        
                        <!-- instagram -->
                        <a href="https://www.instagram.com/tmgrafixlab/" target="_blank" rel="noopener noreferrer" 
                           class="bg-white/10 hover:bg-white/20 rounded-lg p-2 transition-all">
                            <img src="/Asset 4.png" alt="ig" class="w-6 h-6">
                        </a>
                        
                        <!-- tiktok -->
                        <a href="#" class="bg-white/10 hover:bg-white/20 rounded-lg p-2 transition-all">
                            <img src="/Asset 6.png" alt="tiktok" class="w-6 h-6">
                        </a>
                        
                        <!-- linkedin -->
                        <a href="#" class="bg-white/10 hover:bg-white/20 rounded-lg p-2 transition-all">
                            <img src="/Asset 10.png" alt="linkedin" class="w-6 h-6">
                        </a>
                        
                        <!-- twitter -->
                        <a href="#" class="bg-white/10 hover:bg-white/20 rounded-lg p-2 transition-all">
                            <img src="/Asset 12.png" alt="twitter" class="w-6 h-6">
                        </a>
                    </div>
                    
                    <!-- Newsletter Signup (Optional) -->
                    <div class="mt-6">
                        <p class="text-tm-gray text-xs mb-2">Subscribe for design tips</p>
                        <div class="flex gap-2">
                            <input type="email" placeholder="Your email" 
                                   class="flex-1 px-3 py-2 bg-white/10 border border-white/20 rounded text-white text-sm placeholder-white/50 focus:outline-none focus:border-white/40">
                            <button class="px-3 py-2 bg-white text-tm-red text-sm font-semibold rounded hover:bg-gray-100 transition">
                                Subscribe
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- division -->
            <div class="container px-4 mx-auto">
                <div class="bg-tm-gray h-px w-full opacity-20 mt-8 mb-6"></div>
            </div>

            <!-- copyright -->
            <div class="container px-4 mx-auto flex flex-col md:flex-row items-center justify-between gap-4">
                <div class="flex items-center gap-2">
                    <img src="/copyright.png" alt="copyright" width="12" class="invert opacity-60">
                    <span class="text-tm-gray text-xs opacity-80">{{currentYear}} TMgrafixlab. All rights reserved.</span>
                </div>
                
                <!-- Additional links -->
                <div class="flex gap-6">
                    <RouterLink to="/faqs" class="text-tm-gray hover:text-white text-xs transition-colors">
                        FAQ
                    </RouterLink>
                    <RouterLink to="/blog" class="text-tm-gray hover:text-white text-xs transition-colors">
                        Blog
                    </RouterLink>
                    <a href="#" class="text-tm-gray hover:text-white text-xs transition-colors">
                        Privacy Policy
                    </a>
                    <a href="#" class="text-tm-gray hover:text-white text-xs transition-colors">
                        Terms of Service
                    </a>
                </div>
            </div>
        </section>
    </div>
</template>

<script>
import { RouterLink } from 'vue-router';

export default {
    components: { RouterLink },
    data() {
        return {
            currentYear: new Date().getFullYear()
        }
    }
}
</script>