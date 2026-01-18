<template>
    <div class="bg-tm-gray min-h-screen">
        <!-- Header -->
         <Header />

         <!-- marque -->
          <Marquee />

          <!-- Portfolio Menu -->
            <div class="fixed top-24 left-0 w-full z-40 bg-white shadow-sm">
            <div class="container mx-auto px-4">
                <div class="flex items-center justify-between py-4">

                <!-- Title -->
                <h3 class="text-tm-red font-semibold text-2xl">
                    My Portfolio
                </h3>

                <!-- Desktop Menu -->
                <div class="hidden md:flex items-center gap-4">
                    <button
                    v-for="sect in sections"
                    :key="sect.id"
                    @click="scrollToSection(sect.id)"
                    class="text-gray-700 hover:text-tm-red font-medium transition-colors duration-300 text-sm lg:text-base"
                    >
                    {{ sect.name }}
                    </button>
                </div>

                <!-- Mobile Menu -->
                <div class="md:hidden relative">
                    <button
                    @click="openMenu = !openMenu"
                    class="p-2 rounded-lg hover:bg-gray-100 transition-colors"
                    >
                    <img
                        src="/hamburger.png"
                        width="28"
                        class="transition-transform duration-200"
                        :class="{ 'rotate-90': openMenu }"
                    >
                    </button>

                    <div
                    v-if="openMenu"
                    class="absolute top-full right-0 mt-2 bg-white shadow-lg border rounded-lg py-2 w-52 z-50"
                    >
                    <button
                        v-for="sect in sections"
                        :key="sect.id"
                        @click="scrollToSection(sect.id)"
                        class="w-full text-left px-4 py-2 hover:bg-gray-100 hover:text-tm-red text-sm flex justify-between"
                    >
                        <span>{{ sect.name }}</span>
                        <span class="text-xs text-gray-400">{{ sect.rate }}</span>
                    </button>
                    </div>
                </div>

                </div>
            </div>
            </div>

            <!-- spacer -->
            <div class="h-28"></div>

           <!-- separator -->
            <div class="bg-tm-red h-px pt-1"></div>

           <!-- social media posts -->
            <section id="social-media" class="py-4 mt-4 pt-32">
                <div class="container mx-auto px-4">
                    <div class="">
                        <!-- section header -->
                         <div class="flex flex-col md:flex-row md:items-center justify-between mb-8 gap-4">
                            <div class="">
                                <h3 class="font-semibold text-2xl md:text-3xl text-gray-800 mb-2">Social Media Posts</h3>

                                <p class="text-gray-600 max-w-2xl text-sm md:text-base">Social media posters are visually engaging graphics designed to promote contant, 
                                    products, or events across platforms like Instagram, Facebook, and LinkedIn.
                                </p>
                            </div>
                            <div class="bg-white px-4 py-3 rounded-lg shadow-sm border">
                                <span class="font-bold text-lg text-tm-red">$15</span>
                                <span class="text-gray-600 ml-1 text-sm">per post</span>
                            </div>
                         </div>

                         <!-- Images Grid -->

                          <div class="grid grid-cols-1 md:grid-cols-4 gap-3 mt-4 overflow-visible">
                            <div v-for="(img, index) in socialMediaPosts" class="bg-white shadow-md p-2 rounded-md flex flex-col items-center relative group transition-all duration-300">
                                <img
                                 :src="img.img" 
                                 :alt="img.description" 
                                 class="w-full aspect-square object-cover rounded-md ease-out transition-transform duration-300 group-hover:scale-150 group-hover:z-50">
                                <span class="text-gray-700 hover:text-tm-red font-semibold">{{ img.description }}</span>
                            </div>
                          </div>
                    </div>
                </div>
            </section>

            <!-- separator -->
             <Separator />

            <!-- travel flyers -->
             <section id="travel-flyers" class="py-4 mt-4 pt-32">
                <div class="container mx-auto px-4">
                    <div class="">
                        <!-- section header -->
                         <div class="flex flex-col md:flex-row md:items-center justify-between mb-8 gap-4">
                            <div class="">
                                <h3 class="font-semibold text-2xl md:text-3xl text-gray-800 mb-2">Travel Flyers</h3>

                                <p class="text-gray-600 max-w-2xl text-sm md:text-base">Eye-catching travel flyers to promote destinations and packages.
                                </p>
                            </div>
                            <div class="bg-white px-4 py-3 rounded-lg shadow-sm border">
                                <span class="font-bold text-lg text-tm-red">$25</span>
                                <span class="text-gray-600 ml-1 text-sm">per flyer</span>
                            </div>
                         </div>

                         <!-- Images Grid -->

                          <div class="grid grid-cols-1 md:grid-cols-4 gap-3 mt-4 overflow-visible">
                            <div v-for="(img, index) in travelFlyers" class="bg-white shadow-md p-2 rounded-md flex flex-col items-center relative group transition-all duration-300">
                                <img 
                                :src="img.img" 
                                :alt="img.description" 
                                class="w-full aspect-square object-cover rounded-md ease-out transition-transform duration-300 group-hover:scale-150 group-hover:z-50">
                                <span class="text-gray-700 font-semibold">{{ img.description }}</span>
                            </div>
                          </div>
                    </div>
                </div>
            </section>

            <!-- separator -->
             <Separator />

             <!-- political posters -->
              <section id="political-posters" class="py-4 mt-4 pt-32">
                <div class="container mx-auto px-4">
                    <div class="">
                        <!-- section header -->
                         <div class="flex flex-col md:flex-row md:items-center justify-between mb-8 gap-4">
                            <div class="">
                                <h3 class="font-semibold text-2xl md:text-3xl text-gray-800 mb-2">Political Posters</h3>

                                <p class="text-gray-600 max-w-2xl text-sm md:text-base">Bold designs for campaigns, rallies, and political events.
                                </p>
                            </div>
                            <div class="bg-white px-4 py-3 rounded-lg shadow-sm border">
                                <span class="font-bold text-lg text-tm-red">$20</span>
                                <span class="text-gray-600 ml-1 text-sm">per poster</span>
                            </div>
                         </div>

                         <!-- Images Grid -->

                          <div class="grid grid-cols-1 md:grid-cols-4 gap-3 mt-4 overflow-visible">
                            <div v-for="(img, index) in politicalPosters" class="bg-white shadow-md p-2 rounded-md flex flex-col items-center relative group transition-all duration-300">
                                <img
                                 :src="img.img" 
                                 :alt="img.description" 
                                 class="w-full aspect-square object-cover rounded-md ease-out transition-transform duration-300 group-hover:scale-150 group-hover:z-50">
                                <span class="text-gray-700 font-semibold">{{ img.description }}</span>
                            </div>
                          </div>
                    </div>
                </div>
            </section>

            <!-- separator -->
            <Separator />

              <!-- general flyers -->
               <section id="general-flyers" class="py-4 mt-4 pt-32">
                <div class="container mx-auto px-4">
                    <div class="">
                        <!-- section header -->
                         <div class="flex flex-col md:flex-row md:items-center justify-between mb-8 gap-4">
                            <div class="">
                                <h3 class="font-semibold text-2xl md:text-3xl text-gray-800 mb-2">General Flyers</h3>

                                <p class="text-gray-600 max-w-2xl text-sm md:text-base">Creative flyers for business promotions, events, and announcements.
                                </p>
                            </div>
                            <div class="bg-white px-4 py-3 rounded-lg shadow-sm border">
                                <span class="font-bold text-lg text-tm-red">$25</span>
                                <span class="text-gray-600 ml-1 text-sm">per flyer</span>
                            </div>
                         </div>

                         <!-- Images Grid -->

                          <div class="grid grid-cols-1 md:grid-cols-4 gap-3 mt-4 overflow-visible">
                            <div v-for="(img, index) in generalFlyers" class="bg-white shadow-md p-2 rounded-md flex flex-col items-center relative group transition-all duration-300">
                                <img
                                 :src="img.img" 
                                 :alt="img.description" 
                                 class="w-full aspect-square object-cover rounded-md ease-out transition-transform duration-300 group-hover:scale-150 group-hover:z-50">
                                <span class="text-gray-700 font-semibold">{{ img.description }}</span>
                            </div>
                          </div>
                    </div>
                </div>
            </section>

            <!-- separator -->
             <Separator />

               <!-- mockups -->
                <section id="mockups" class="py-4 mt-4 pt-32">
                <div class="container mx-auto px-4">
                    <div class="">
                        <!-- section header -->
                         <div class="flex flex-col md:flex-row md:items-center justify-between mb-8 gap-4">
                            <div class="">
                                <h3 class="font-semibold text-2xl md:text-3xl text-gray-800 mb-2">Mockups</h3>

                                <p class="text-gray-600 max-w-2xl text-sm md:text-base">Professional mockups for products and branding presentations.
                                </p>
                            </div>
                            <div class="bg-white px-4 py-3 rounded-lg shadow-sm border">
                                <span class="font-bold text-lg text-tm-red">$20</span>
                                <span class="text-gray-600 ml-1 text-sm">per mockup</span>
                            </div>
                         </div>

                         <!-- Images Grid -->

                          <div class="grid grid-cols-1 md:grid-cols-4 gap-3 mt-4 overflow-visible">
                            <div v-for="(img, index) in mockups" class="bg-white shadow-md p-2 rounded-md flex flex-col items-center relative group transition-all duration-300">
                                <img
                                 :src="img.img" 
                                 :alt="img.description" 
                                 class="w-full aspect-square object-cover rounded-md ease-out transition-transform duration-300 group-hover:scale-150 group-hover:z-50">
                                <span class="text-gray-700 font-semibold">{{ img.description }}</span>
                            </div>
                          </div>
                    </div>
                </div>
            </section>

            <!-- separator -->
             <Separator />

                <!-- logos -->
                 <section id="logos" class="py-4 mt-4 pt-32">
                    <div class="container mx-auto px-4">
                        <div class="">
                            <!-- section header -->
                            <div class="flex flex-col md:flex-row md:items-center justify-between mb-8 gap-4">
                                <div class="">
                                    <h3 class="font-semibold text-2xl md:text-3xl text-gray-800 mb-2">Logos</h3>

                                    <p class="text-gray-600 max-w-2xl text-sm md:text-base">Custom logo designs tailored to your brand identity.
                                    </p>
                                </div>
                                <div class="bg-white px-4 py-3 rounded-lg shadow-sm border">
                                    <span class="font-bold text-lg text-tm-red">$50</span>
                                    <span class="text-gray-600 ml-1 text-sm">per logo</span>
                                </div>
                            </div>

                            <!-- Images Grid -->

                            <div class="grid grid-cols-1 md:grid-cols-4 gap-3 mt-4 overflow-visible">
                                <div v-for="(img, index) in logos" class="bg-white shadow-md p-2 rounded-md flex flex-col items-center relative group transition-all duration-300">
                                    <img
                                     :src="img.img" 
                                     :alt="img.description" 
                                     class="w-full max-w-[160px] aspect-square object-contain rounded-md transition-transform duration-300 group-hover:scale-110">
                                    <span class="text-gray-700 hover:text-tm-red font-semibold">{{ img.description }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>

            <!-- separator -->
             <Separator />

                 <!-- desclaimer -->
                  <section class="py-12 mt-4 pt-32">
                    <div class="container mx-auto px-4">
                        <div class="bg-gray-50 rounded-xl p-6 md:p-8 border border-gray-200">
                            <h3 class="font-semibold text-2xl text-gray-800 mb-4">Disclaimer</h3>
                            <p class="text-gray-600 text-sm md:text-base mb-4 leading-relaxed">Please note that all designs, images, and content on this website are for demonstration purposes only.
                                Umauthorized use, reproduction, or distribution of these materials is prohibited.
                            </p>

                            <p class="text-gray-600 text-sm md:text-base mb-4 leading-relaxed">The work shown in this portfolio is for creative showcase purposes only. All logos, brand names, and designs remain the 
                                property of their respective owners. TMGrafixLab does not claim ownership of client trdemarks or copyrighted material. 
                                These designs are displayed solely to demonstrate the scope and quality of our services.
                            </p>

                            <p class="text-tm-red font-semibold text-sm md:text-base">Contact: For licensing or usage inquiries, please <a href="/contact" class="text-purple-600 underline hover:text-purple-800 transition-colors">reach out via our contact page</a>.</p>
                        </div>
                    </div>
                  </section>

                  <!-- footer -->
                   <Footer />
    </div>
</template>

<script>
import Footer from '@/components/Footer.vue';
import Header from '@/components/Header.vue';
import Marquee from '@/components/Marquee.vue';
import Separator from '@/components/Separator.vue';

    export default {
        components: {
            Footer,
            Header,
            Marquee,
            Separator
        },

        methods: {
            scrollToSection(sectionId) {
                this.openMenu = false

                const element = document.getElementById(sectionId);

                if (element) {
                    element.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    })
                }
            },
        },

        data() {
            return {
                openMenu: false,

                socialMediaPosts: [
                    { img: '/Uptrend start mtumba business sm poster.jpg', description: 'Event Promotion' },
                    { img: '/EDENSTREAMS2.png', description: 'Real Estate' },
                    { img: '/KARI GLAMOUR RVSD 2.jpg', description: 'Beauty' },
                    { img: '/Suzuki Jimny.png', description: 'Car/Product Sale production' },
                    { img: '/ART AT SUNSET.png', description: 'Event Promotion' },
                    { img: '/JEFF BIRTHDAY II.png', description: 'Birthday, Wedding, Graduation' }
                ],

                travelFlyers: [
                    { img: '/Camp Dunda copyxd.jpg', description: 'Summer beach vacation flyer' },
                    { img: '/21 SEPTEMBER NGONG HILLS HIKE and FUN.jpg', description: 'City exploration trip poster' },
                    { img: '/BIT TRIP RVSD.png', description: 'Discounted holiday package' },
                    { img: '/NAMANGA copy34.png', description: 'Mountain adventure campaign' },
                    { img: '/WRC 2025 TWENDE VASHA NA RUBY ADVENTURES.png', description: 'Luxury cruise promotion' },
                    { img: '/VISIT RWANDA REDESIGN BY TMGRAFIXLAB.jpg', description: 'Safari tour special' },
                    { img: '/Ramja safaris2.png', description: 'Weekend gateway deal' },
                    { img: '/PRIME ADVENTURES.jpg', description: 'Winter holiday escape' }
                ],

                politicalPosters: [
                    { img: '/Artboard 1.png', description: 'Campaign rally poster' },
                    { img: '/Hon George Kibuku Wishes You Happy International youth day.jpg', description: 'Community engagement flyer' },
                    { img: '/MATUNGULU CONSTITUENCY BODABODA  EMPOWERMENT.jpg', description: 'Empowerment' },
                    { img: '/needy2.png', description: 'Policy awareness poster' },
                    { img: '/HON KENRIC MAINA WELCOMING RIGGY G.jpg', description: 'Informative Political posters' },
                    { img: '/Kilome Constituency Bodaboda Empowerment programme my post.jpg', description: 'Youth voter campaign' },
                    { img: '/Hon George-01 (1).jpg', description: 'Creating awareness' },
                    { img: '/Ecogeeks Mashujaa Day copy.png', description: 'Public Holiday' }
                ],

                generalFlyers: [
                    { img: '/FAIBA MKONONI Final.png', description: 'Informative Flyer' },
                    { img: '/BENTECH.png', description: 'Promotional Flyer' },
                    { img: '/faiba mkononi A5 BACK-04.jpg', description: 'Bronchures' },
                    { img: '/Kari Glamour copyY.png', description: 'Beauty and cosmetics' },
                    { img: '/CROPCARE FLYERDFGH-01.jpg', description: 'Product Promotion' },
                    { img: '/Faibamkononi Home Plan A5-02.jpg', description: 'Local community fair flyer' },
                    { img: '/faiba mkononi flyer with PICTURES-05.jpg', description: 'Startup pitch event flyer' },
                    { img: '/PASSION DRY CLEANERS ORG copy11.png', description: 'Holiday sales promo' }
                ],

                mockups: [
                    { img: '/Letterhead_with_Business_Card copy.jpg', description: 'Business card mockup' },
                    { img: '/LEAF ADVOCATES MUGS.png', description: 'Design and printing' },
                    { img: '/BANNER MCKUP.png', description: 'Banner design and printing' },
                    { img: '/FAIBA MKONONI Trifold BROCHURE.png', description: 'Branding stationery mockup' },
                    { img: '/TRUCKER HAT DMAX.jpg', description: 'Merchandise design and printing' },
                    { img: '/TM MERCH.png', description: 'High quality Tshirt branding' },
                    { img: '/Mockup DMAX.jpg', description: 'Wrist bands' },
                    { img: '/hood.png', description: 'T-shirt & Hoodie printing' }
                ],

                logos: [
                    { img: '/Logo1.png', description: 'Minimalist law company logo' },
                    { img: '/Logo2.png', description: 'Bookshop logo' },
                    { img: '/Logo3.png', description: 'Luxury Fashion & Design' },
                    { img: '/Logo4.png', description: 'Beauty' },
                    { img: '/Logo5.png', description: 'Photography' },
                    { img: '/Logo6.png', description: 'Sports logo redesign' },
                    { img: '/logo7.png', description: 'Farm Product brand' },
                    { img: '/Logo8.png', description: 'Internet Provider Brand' }
                ],

                sections: [
                    {
                        id: 'social-media',
                        name: 'Social Media',
                        rate: '$15'
                    },

                    {
                        id: 'travel-flyers',
                        name: 'Travel Flyers',
                        rate: '$25'
                    },

                    {
                        id: 'political-posters',
                        name: 'Political Posters',
                        rate: '$20'
                    },

                    {
                        id: 'general-flyers',
                        name: 'General Flyers',
                        rate: '$25'
                    },

                    {
                        id: 'mockups',
                        name: 'Mockups',
                        rate: '$20'                        
                    },

                    {
                        id: 'logos',
                        name: 'Logos',
                        rate: '$50'
                    },
                ]
            }
        }
    }
</script>

<style scoped>
    html {
        scroll-behavior: smooth;
    }

    /* section spacing for fixed header */
    section {
        scroll-margin-top: 80px;
    }

    /* image hover effects */
    

    /* Responsive adjustments */
    @media (max-width: 76px) {
        section {
            scroll-margin-top: 70px;
        }
    }
</style>
