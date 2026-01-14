<template>
    <div class="min-h-screen bg-gradient-to-b from-gray-50 to-white pt-20">
        <!-- Hero Section -->
        <div class="container mx-auto px-4 py-12">
            <div class="text-center max-w-3xl mx-auto">
                <h1 class="text-4xl md:text-5xl font-bold text-gray-900 mb-4">
                    Get in <span class="text-blue-600">Touch</span>
                </h1>
                <p class="text-lg text-gray-600 mb-8">
                    Have questions about our tech programs? Our admissions team is here to help you 
                    start your tech journey in Nairobi.
                </p>
            </div>
        </div>

        <!-- Main Contact Section -->
        <div class="container mx-auto px-4 pb-16">
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
                
                <!-- Contact Information Cards -->
                <div class="space-y-6">
                    <!-- Admissions Card -->
                    <div class="bg-white rounded-2xl shadow-lg p-6 border-l-4 border-blue-500">
                        <div class="flex items-start space-x-4">
                            <div class="bg-blue-100 p-3 rounded-lg">
                                <svg class="w-6 h-6 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                            </div>
                            <div>
                                <h3 class="text-xl font-bold text-gray-900 mb-2">Admissions Office</h3>
                                <p class="text-gray-600 mb-3">For program inquiries and applications</p>
                                <a href="tel:+254711082146" class="text-blue-600 hover:text-blue-700 font-medium block">+254 711 082 146</a>
                                <a href="mailto:admissions@uniscape.co.ke" class="text-blue-600 hover:text-blue-700 font-medium block">admissions@uniscape.co.ke</a>
                            </div>
                        </div>
                    </div>

                    <!-- General Inquiries Card -->
                    <div class="bg-white rounded-2xl shadow-lg p-6 border-l-4 border-green-500">
                        <div class="flex items-start space-x-4">
                            <div class="bg-green-100 p-3 rounded-lg">
                                <svg class="w-6 h-6 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 4.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                                </svg>
                            </div>
                            <div>
                                <h3 class="text-xl font-bold text-gray-900 mb-2">General Inquiries</h3>
                                <p class="text-gray-600 mb-3">For partnerships and other questions</p>
                                <a href="tel:+2540201234567" class="text-blue-600 hover:text-blue-700 font-medium block">+254 020 123 4567</a>
                                <a href="mailto:info@uniscape.co.ke" class="text-blue-600 hover:text-blue-700 font-medium block">info@uniscape.co.ke</a>
                            </div>
                        </div>
                    </div>

                    <!-- Location Card -->
                    <div class="bg-white rounded-2xl shadow-lg p-6 border-l-4 border-purple-500">
                        <div class="flex items-start space-x-4">
                            <div class="bg-purple-100 p-3 rounded-lg">
                                <svg class="w-6 h-6 text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                                </svg>
                            </div>
                            <div>
                                <h3 class="text-xl font-bold text-gray-900 mb-2">Visit Our Campus</h3>
                                <p class="text-gray-600 mb-2">Uniscape Technology Education</p>
                                <p class="text-gray-600">Nairobi Tech Hub, Ngong Lane</p>
                                <p class="text-gray-600">Nairobi, Kenya</p>
                                <button class="mt-3 text-blue-600 hover:text-blue-700 font-medium flex items-center">
                                    <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                    </svg>
                                    Get Directions
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Hours Card -->
                    <div class="bg-white rounded-2xl shadow-lg p-6 border-l-4 border-yellow-500">
                        <div class="flex items-start space-x-4">
                            <div class="bg-yellow-100 p-3 rounded-lg">
                                <svg class="w-6 h-6 text-yellow-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                            </div>
                            <div>
                                <h3 class="text-xl font-bold text-gray-900 mb-2">Office Hours</h3>
                                <div class="space-y-2">
                                    <div class="flex justify-between">
                                        <span class="text-gray-600">Mon - Fri</span>
                                        <span class="font-medium">8:00 AM - 5:00 PM</span>
                                    </div>
                                    <div class="flex justify-between">
                                        <span class="text-gray-600">Saturday</span>
                                        <span class="font-medium">9:00 AM - 1:00 PM</span>
                                    </div>
                                    <div class="flex justify-between">
                                        <span class="text-gray-600">Sunday</span>
                                        <span class="font-medium">Closed</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Contact Form -->
                <div class="lg:col-span-2">
                    <div class="bg-white rounded-2xl shadow-xl p-8">
                        <h2 class="text-2xl font-bold text-gray-900 mb-6">Send us a Message</h2>
                        
                        <form class="space-y-6">
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <!-- Name -->
                                <div>
                                    <label for="name" class="block text-sm font-medium text-gray-700 mb-2">
                                        Full Name *
                                    </label>
                                    <input 
                                        type="text" 
                                        id="name"
                                        required
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
                                        placeholder="John Doe"
                                    >
                                </div>

                                <!-- Email -->
                                <div>
                                    <label for="email" class="block text-sm font-medium text-gray-700 mb-2">
                                        Email Address *
                                    </label>
                                    <input 
                                        type="email" 
                                        id="email"
                                        required
                                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
                                        placeholder="john@example.com"
                                    >
                                </div>
                            </div>

                            <!-- Phone -->
                            <div>
                                <label for="phone" class="block text-sm font-medium text-gray-700 mb-2">
                                    Phone Number
                                </label>
                                <input 
                                    type="tel" 
                                    id="phone"
                                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
                                    placeholder="+254 700 000 000"
                                >
                            </div>

                            <!-- Program Interest -->
                            <div>
                                <label for="program" class="block text-sm font-medium text-gray-700 mb-2">
                                    Program of Interest
                                </label>
                                <select 
                                    id="program"
                                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
                                >
                                    <option value="">Select a program</option>
                                    <option value="software">Software Engineering</option>
                                    <option value="cybersecurity">Cybersecurity</option>
                                    <option value="data-science">Data Science</option>
                                    <option value="ai">Artificial Intelligence</option>
                                    <option value="design">UI/UX Design</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>

                            <!-- Message -->
                            <div>
                                <label for="message" class="block text-sm font-medium text-gray-700 mb-2">
                                    Your Message *
                                </label>
                                <textarea 
                                    id="message"
                                    rows="5"
                                    required
                                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
                                    placeholder="Tell us about your interest in tech education..."
                                ></textarea>
                            </div>

                            <!-- Submit Button -->
                            <div>
                                <button 
                                    type="submit"
                                    class="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium py-3 px-6 rounded-lg transition duration-300 transform hover:-translate-y-1 hover:shadow-lg"
                                >
                                    Send Message
                                    <svg class="w-5 h-5 inline-block ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3" />
                                    </svg>
                                </button>
                            </div>

                            <p class="text-sm text-gray-500 text-center">
                                Responding within 24 hours during business days.
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Map Section -->
        <div class="container mx-auto px-4 pb-16">
            <div class="bg-white rounded-2xl shadow-xl overflow-hidden">
                <div class="grid grid-cols-1 lg:grid-cols-2">
                    <!-- Map Info -->
                    <div class="p-8 lg:p-12 bg-gradient-to-br from-blue-50 to-white">
                        <h3 class="text-2xl font-bold text-gray-900 mb-4">Find Our Campus</h3>
                        <p class="text-gray-600 mb-6">
                            Visit our Nairobi campus for a tour, meet our instructors, and see our state-of-the-art facilities. 
                            We're conveniently located in the tech hub of Nairobi.
                        </p>
                        
                        <div class="space-y-4">
                            <div class="flex items-center">
                                <svg class="w-5 h-5 text-blue-600 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                </svg>
                                <span class="text-gray-700">Nairobi Tech Hub, Ngong Lane, Nairobi</span>
                            </div>
                            
                            <div class="flex items-center">
                                <svg class="w-5 h-5 text-blue-600 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                                <span class="text-gray-700">Open Monday-Friday, 8:00 AM - 5:00 PM</span>
                            </div>
                            
                            <div class="flex items-center">
                                <svg class="w-5 h-5 text-blue-600 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                                </svg>
                                <span class="text-gray-700">Schedule a visit: +254 711 082 146</span>
                            </div>
                        </div>
                        
                        <div class="mt-8">
                            <a 
                                href="https://maps.google.com/?q=Uniscape+Technology+Education+Nairobi"
                                target="_blank"
                                class="inline-flex items-center bg-blue-600 hover:bg-blue-700 text-white font-medium py-3 px-6 rounded-lg transition"
                            >
                                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 20l-5.447-2.724A1 1 0 013 16.382V5.618a1 1 0 011.447-.894L9 7m0 13l6-3m-6 3V7m6 10l4.553 2.276A1 1 0 0021 18.382V7.618a1 1 0 00-.553-.894L15 4m0 13V4m0 0L9 7" />
                                </svg>
                                Open in Google Maps
                            </a>
                        </div>
                    </div>
                    
                    <!-- Map Placeholder -->
                    <div class="bg-gray-200 h-64 lg:h-auto min-h-[300px] flex items-center justify-center">
                        <div class="text-center">
                            <svg class="w-16 h-16 text-gray-400 mx-auto mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 20l-5.447-2.724A1 1 0 013 16.382V5.618a1 1 0 011.447-.894L9 7m0 13l6-3m-6 3V7m6 10l4.553 2.276A1 1 0 0021 18.382V7.618a1 1 0 00-.553-.894L15 4m0 13V4m0 0L9 7" />
                            </svg>
                            <p class="text-gray-500">Google Maps integration</p>
                            <p class="text-sm text-gray-400">Replace with actual Google Maps embed</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- FAQ Link -->
        <div class="container mx-auto px-4 pb-16">
            <div class="bg-gradient-to-r from-blue-50 to-indigo-50 rounded-2xl p-8 text-center">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Common Questions?</h3>
                <p class="text-gray-600 mb-6 max-w-2xl mx-auto">
                    Check our FAQ page for answers to frequently asked questions about admissions, fees, programs, and more.
                </p>
                <a 
                    href="/faqs/"
                    class="inline-flex items-center bg-white hover:bg-gray-50 text-blue-600 font-medium py-3 px-6 rounded-lg border border-blue-200 transition"
                >
                    <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                    </svg>
                    Visit FAQ Page
                </a>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'ContactPage',
    data() {
        return {
            formData: {
                name: '',
                email: '',
                phone: '',
                program: '',
                message: ''
            }
        }
    },
    methods: {
        submitForm() {
            // Handle form submission here
            console.log('Form submitted:', this.formData);
            // Add your form submission logic (API call, etc.)
            
            // Show success message
            alert('Thank you! Your message has been sent. We\'ll respond within 24 hours.');
            
            // Reset form
            this.formData = {
                name: '',
                email: '',
                phone: '',
                program: '',
                message: ''
            };
        }
    }
}
</script>

<style scoped>
/* Custom styles if needed */
input:focus, select:focus, textarea:focus {
    outline: none;
    box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
}

/* Smooth transitions */
button, a {
    transition: all 0.3s ease;
}

/* Card hover effects */
.bg-white:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1);
}
</style>