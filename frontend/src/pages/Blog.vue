<template>
    <div class="min-h-screen bg-tm-gray">
        <!-- Header -->
        <Header />

        <!-- Blog Hero Section -->
        <section class="pt-24 pb-12 bg-white">
            <div class="container px-4 mx-auto">
                <div class="text-center max-w-3xl mx-auto">
                    <h1 class="text-4xl md:text-5xl font-bold text-tm-red mb-4">
                        TMGrafixLab Blog
                    </h1>
                    <p class="text-lg text-gray-600 mb-8">
                        Design insights, creative inspiration, and industry trends 
                        from our studio. Stay updated with the latest in graphic design.
                    </p>
                    
                    <!-- Search Bar -->
                    <div class="relative max-w-md mx-auto">
                        <input 
                            type="text" 
                            placeholder="Search blog posts..." 
                            class="w-full px-6 py-3 rounded-lg border border-gray-300 focus:border-tm-red focus:ring-2 focus:ring-tm-red/20 focus:outline-none"
                            v-model="searchQuery"
                            @input="filterPosts"
                        >
                        <svg class="absolute right-4 top-3.5 w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                        </svg>
                    </div>
                </div>
            </div>
        </section>

        <!-- Featured Post -->
        <section class="py-8 bg-gradient-to-r from-tm-gray to-white">
            <div class="container px-4 mx-auto">
                <div class="bg-white rounded-2xl overflow-hidden shadow-xl">
                    <div class="grid grid-cols-1 lg:grid-cols-2">
                        <!-- Featured Image -->
                        <div class="h-64 lg:h-auto">
                            <img 
                                src="https://images.unsplash.com/photo-1561070791-2526d30994b5?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" 
                                alt="Featured Blog Post"
                                class="w-full h-full object-cover"
                            />
                        </div>
                        
                        <!-- Featured Content -->
                        <div class="p-8 lg:p-12 flex flex-col justify-center">
                            <span class="inline-block px-3 py-1 bg-tm-red/10 text-tm-red rounded-full text-sm font-medium mb-4">
                                Featured
                            </span>
                            <h2 class="text-2xl md:text-3xl font-bold text-gray-900 mb-4">
                                10 Logo Design Trends That Will Dominate 2025
                            </h2>
                            <p class="text-gray-600 mb-6">
                                Discover the emerging logo design trends that will shape brand identities 
                                in the coming year. From animated logos to minimalist redesigns.
                            </p>
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-4">
                                    <span class="text-sm text-gray-500">Nov 15, 2024</span>
                                    <span class="text-sm text-gray-500">•</span>
                                    <span class="text-sm font-medium text-tm-red">Branding</span>
                                </div>
                                <a href="#" class="text-tm-red font-semibold hover:text-red-700 flex items-center">
                                    Read Article
                                    <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3" />
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Blog Content -->
        <section class="py-12 bg-tm-gray">
            <div class="container px-4 mx-auto">
                <!-- Category Filters -->
                <div class="flex flex-wrap justify-center gap-3 mb-12">
                    <button 
                        v-for="category in categories" 
                        :key="category"
                        @click="selectCategory(category)"
                        :class="[
                            'px-5 py-2 rounded-full text-sm font-medium transition-all',
                            selectedCategory === category 
                                ? 'bg-tm-red text-white' 
                                : 'bg-white text-gray-700 hover:bg-gray-100'
                        ]"
                    >
                        {{ category }}
                    </button>
                </div>

                <!-- Blog Grid -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                    <!-- Blog Post Cards -->
                    <div 
                        v-for="post in filteredPosts" 
                        :key="post.id"
                        class="bg-white rounded-xl overflow-hidden shadow-lg hover:shadow-2xl transition-shadow duration-300"
                    >
                        <!-- Post Image -->
                        <div class="h-48 overflow-hidden">
                            <img 
                                :src="post.image" 
                                :alt="post.title"
                                class="w-full h-full object-cover hover:scale-105 transition-transform duration-500"
                            />
                        </div>
                        
                        <!-- Post Content -->
                        <div class="p-6">
                            <div class="flex items-center space-x-4 mb-4">
                                <span class="text-sm text-gray-500">{{ post.date }}</span>
                                <span class="px-3 py-1 bg-gray-100 text-gray-700 rounded-full text-xs font-medium">
                                    {{ post.category }}
                                </span>
                            </div>
                            
                            <h3 class="text-xl font-bold text-gray-900 mb-3 hover:text-tm-red cursor-pointer">
                                {{ post.title }}
                            </h3>
                            
                            <p class="text-gray-600 mb-6 line-clamp-2">
                                {{ post.excerpt }}
                            </p>
                            
                            <div class="flex items-center justify-between pt-4 border-t border-gray-100">
                                <div class="flex items-center">
                                    <div class="w-8 h-8 rounded-full bg-gray-300 mr-3"></div>
                                    <span class="text-sm text-gray-700">{{ post.author }}</span>
                                </div>
                                <a 
                                    :href="post.link" 
                                    class="text-tm-red font-semibold hover:text-red-700 flex items-center text-sm"
                                >
                                    Read
                                    <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3" />
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Empty State -->
                <div v-if="filteredPosts.length === 0" class="text-center py-16">
                    <svg class="w-16 h-16 text-gray-300 mx-auto mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                    </svg>
                    <h3 class="text-xl font-bold text-gray-700 mb-2">No posts found</h3>
                    <p class="text-gray-500">Try adjusting your search or filter criteria</p>
                </div>

                <!-- Pagination -->
                <div class="flex justify-center mt-12" v-if="filteredPosts.length > 0">
                    <nav class="flex items-center space-x-2">
                        <button class="px-4 py-2 rounded-lg bg-white text-gray-700 hover:bg-gray-100">
                            Previous
                        </button>
                        <button class="px-4 py-2 rounded-lg bg-tm-red text-white">1</button>
                        <button class="px-4 py-2 rounded-lg bg-white text-gray-700 hover:bg-gray-100">2</button>
                        <button class="px-4 py-2 rounded-lg bg-white text-gray-700 hover:bg-gray-100">3</button>
                        <span class="px-2 text-gray-500">...</span>
                        <button class="px-4 py-2 rounded-lg bg-white text-gray-700 hover:bg-gray-100">8</button>
                        <button class="px-4 py-2 rounded-lg bg-white text-gray-700 hover:bg-gray-100">
                            Next
                        </button>
                    </nav>
                </div>
            </div>
        </section>

        <!-- Newsletter Section -->
        <section class="py-16 bg-white">
            <div class="container px-4 mx-auto">
                <div class="max-w-2xl mx-auto text-center">
                    <h2 class="text-3xl font-bold text-gray-900 mb-4">
                        Get Design Tips Weekly
                    </h2>
                    <p class="text-gray-600 mb-8">
                        Subscribe to our newsletter for the latest design insights, 
                        tutorials, and creative inspiration delivered to your inbox.
                    </p>
                    
                    <div class="flex flex-col sm:flex-row gap-4 max-w-md mx-auto">
                        <input 
                            type="email" 
                            placeholder="Your email address" 
                            class="flex-1 px-6 py-3 border border-gray-300 rounded-lg focus:border-tm-red focus:ring-2 focus:ring-tm-red/20 focus:outline-none"
                        >
                        <button class="px-8 py-3 bg-tm-red text-white font-semibold rounded-lg hover:bg-red-700 transition-colors">
                            Subscribe
                        </button>
                    </div>
                    
                    <p class="text-sm text-gray-500 mt-4">
                        No spam. Unsubscribe anytime.
                    </p>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <Footer />
    </div>
</template>

<script>
import Header from '@/components/Header.vue';
import Footer from '@/components/Footer.vue';

export default {
    components: {
        Header,
        Footer
    },
    
    data() {
        return {
            searchQuery: '',
            selectedCategory: 'All',
            categories: ['All', 'Branding', 'Social Media', 'Print Design', 'Packaging', 'Motion Graphics', 'Tips & Tutorials'],
            
            // Sample blog posts data
            blogPosts: [
                {
                    id: 1,
                    title: "Color Psychology in Logo Design",
                    excerpt: "How color choices affect brand perception and consumer behavior in logo design.",
                    image: "https://images.unsplash.com/photo-1545235617-9465d2a55698?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
                    date: "Nov 20, 2024",
                    category: "Branding",
                    author: "Alex Designer",
                    link: "#"
                },
                {
                    id: 2,
                    title: "Creating Engaging Social Media Visuals",
                    excerpt: "Best practices for designing scroll-stopping graphics for Instagram and Facebook.",
                    image: "https://images.unsplash.com/photo-1611162617213-7d7a39e9b1d7?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
                    date: "Nov 18, 2024",
                    category: "Social Media",
                    author: "Sarah Creative",
                    link: "#"
                },
                {
                    id: 3,
                    title: "Print vs Digital: Design Considerations",
                    excerpt: "Key differences in designing for print materials versus digital platforms.",
                    image: "https://images.unsplash.com/photo-1513475382585-d06e58bcb0e0?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
                    date: "Nov 15, 2024",
                    category: "Print Design",
                    author: "Mike Art",
                    link: "#"
                },
                {
                    id: 4,
                    title: "Packaging Design That Sells",
                    excerpt: "How innovative packaging design can boost product sales and brand recognition.",
                    image: "https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
                    date: "Nov 12, 2024",
                    category: "Packaging",
                    author: "Lisa Brand",
                    link: "#"
                },
                {
                    id: 5,
                    title: "Introduction to Motion Graphics",
                    excerpt: "Getting started with animated graphics for social media and websites.",
                    image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
                    date: "Nov 10, 2024",
                    category: "Motion Graphics",
                    author: "Tom Animator",
                    link: "#"
                },
                {
                    id: 6,
                    title: "5 Free Design Tools for Beginners",
                    excerpt: "Essential free tools and resources for aspiring graphic designers.",
                    image: "https://images.unsplash.com/photo-1555099962-4199c345e5dd?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
                    date: "Nov 8, 2024",
                    category: "Tips & Tutorials",
                    author: "Emma Tutor",
                    link: "#"
                }
            ]
        };
    },
    
    computed: {
        filteredPosts() {
            let posts = this.blogPosts;
            
            // Filter by category
            if (this.selectedCategory !== 'All') {
                posts = posts.filter(post => post.category === this.selectedCategory);
            }
            
            // Filter by search query
            if (this.searchQuery) {
                const query = this.searchQuery.toLowerCase();
                posts = posts.filter(post => 
                    post.title.toLowerCase().includes(query) || 
                    post.excerpt.toLowerCase().includes(query) ||
                    post.category.toLowerCase().includes(query)
                );
            }
            
            return posts;
        }
    },
    
    methods: {
        selectCategory(category) {
            this.selectedCategory = category;
        },
        
        filterPosts() {
            // Reactive filtering is handled by computed property
        }
    }
};
</script>

<style scoped>
.line-clamp-2 {
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
}

/* Add any additional custom styles here */
</style>