<template>
    <div class="">
        <!-- Header -->
         <Header />

        <!-- Marquee -->
         <Marquee />

        <!-- Footer -->
         <Footer />

    </div>
</template>

<script>
import Footer from '@/components/Footer.vue';
import Header from '@/components/Header.vue';
import Marquee from '@/components/Marquee.vue';

    export default {
        components: {
            Header,
            Marquee,
            Footer,
        },

        data() {
            return {}
        }
        
    }
</script>