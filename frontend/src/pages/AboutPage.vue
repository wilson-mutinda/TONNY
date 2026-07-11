<template>
  <div class="bg-tm-gray min-h-screen overflow-hidden">

    <!-- HEADER -->
    <Header />

    <!-- MARQUEE -->
    <Marquee />

    <!-- HERO -->
    <section
      class="relative pt-36 pb-24 overflow-hidden"
    >

      <!-- BACKGROUND -->
      <div
        class="absolute inset-0
               bg-gradient-to-br
               from-gray-100
               via-white
               to-gray-200"
      />

      <!-- DECOR -->
      <div
        class="absolute -top-20 -left-20
               w-72 h-72 bg-red-100
               rounded-full blur-3xl opacity-40"
      />

      <div
        class="absolute bottom-0 right-0
               w-96 h-96 bg-gray-300
               rounded-full blur-3xl opacity-20"
      />

      <div
        class="container mx-auto px-6
               relative z-10"
      >

        <div
          class="max-w-4xl mx-auto text-center"
          data-aos="fade-up"
        >

          <span
            class="inline-block px-5 py-2
                   rounded-full bg-white
                   shadow-md text-sm
                   font-medium text-tm-red mb-6"
          >

            Nairobi&apos;s Creative Design Studio

          </span>

          <h1
            class="text-5xl md:text-6xl
                   font-black leading-tight
                   text-gray-900 font-futura"
          >

            Crafting Visual Stories
            That Connect &
            Convert

          </h1>

          <p
            class="text-gray-600
                   text-lg mt-6
                   max-w-2xl mx-auto"
          >

            TMGrafixLab blends creativity,
            strategy and modern visual
            storytelling to build memorable
            brands that drive real business impact.

          </p>

          <!-- BUTTONS -->
          <div
            class="flex flex-col sm:flex-row
                   justify-center gap-4 mt-10"
          >

            <button 
              @click="openPortfolioPage"
              class="bg-tm-red text-white
                     px-8 py-4 rounded-full
                     shadow-xl hover:scale-105
                     transition"
            >

              Explore Our Work

            </button>

            <button
              class="bg-white border
                     border-gray-300
                     px-8 py-4 rounded-full
                     hover:bg-gray-50
                     transition"
            >

              Our Creative Journey

            </button>

          </div>

        </div>

      </div>

    </section>

    <!-- STORY SECTION -->
    <section class="py-20">

      <div class="container mx-auto px-6">

        <div
          class="grid grid-cols-1
                 lg:grid-cols-2
                 gap-12 items-center"
        >

          <!-- LEFT -->
          <div
            data-aos="fade-right"
          >

            <span class="section-badge">
              Our Story
            </span>

            <h2 class="section-title mt-5">
              From Vision To
              Visual Impact
            </h2>

            <p class="section-desc mt-6">

              TMGrafixLab was born from a
              simple yet powerful vision:
              bridging business goals
              with visual storytelling.

            </p>

            <p class="section-desc mt-5">

              What started as a passion
              for bold typography and
              minimalist branding evolved
              into a modern Nairobi-based
              creative studio helping
              brands communicate with
              confidence and clarity.

            </p>

            <p class="section-desc mt-5">

              Today, we combine
              aesthetics with strategic
              thinking to create designs
              that not only look
              exceptional but also drive
              measurable results.

            </p>

          </div>

          <!-- RIGHT -->
          <div
            class="relative"
            data-aos="fade-left"
          >

            <div
              class="glass-card p-10"
            >

              <img
                src="/TM LOGO2.png"
                class="w-full object-contain
                       hover:scale-105
                       transition duration-500"
              >

            </div>

            <!-- FLOAT CARD -->
            <div
              class="absolute -bottom-8
                     -left-6 bg-white
                     shadow-2xl rounded-3xl
                     px-6 py-5"
            >

              <h3
                class="text-3xl font-black
                       text-tm-red"
              >
                5+
              </h3>

              <p class="text-gray-500 text-sm">
                Years Creative Experience
              </p>

            </div>

          </div>

        </div>

      </div>

    </section>

    <!-- FOUNDER -->
    <section
      class="py-20
             bg-gradient-to-br
             from-white via-gray-50
             to-gray-100"
    >

      <div class="container mx-auto px-6">

        <div
          class="glass-card max-w-5xl
                 mx-auto p-10"
          data-aos="fade-up"
        >

          <div
            class="grid grid-cols-1
                   md:grid-cols-3
                   gap-10 items-center"
          >

            <!-- IMAGE -->
            <div class="text-center">

              <div
                class="w-44 h-44 mx-auto
                       rounded-full
                       border-4 border-tm-red
                       overflow-hidden
                       shadow-2xl"
              >

                <img
                  src="/user.png"
                  class="w-full h-full
                         object-cover"
                >

              </div>

            </div>

            <!-- CONTENT -->
            <div class="md:col-span-2">

              <span class="section-badge">
                Founder & Creative Director
              </span>

              <h2 class="section-title mt-5">
                Antony Muigai
              </h2>

              <p class="section-desc mt-6">

                With over 5 years in
                graphic design and branding,
                Antony combines technical
                expertise with creative
                vision to build memorable
                visual identities.

              </p>

              <p class="section-desc mt-5">

                Specializing in branding,
                typography and digital
                design systems, he has
                helped businesses across
                Kenya establish authentic
                and impactful brand presence.

              </p>

              <!-- QUOTE -->
              <div
                class="mt-8 border-l-4
                       border-tm-red pl-5"
              >

                <p
                  class="italic text-gray-600"
                >

                  “Great design should be
                  both beautiful and
                  purposeful — every pixel
                  should serve a strategic goal.”

                </p>

              </div>

            </div>

          </div>

        </div>

      </div>

    </section>

    <!-- PHILOSOPHY -->
    <section class="py-20">

      <div class="container mx-auto px-6">

        <!-- TITLE -->
        <div
          class="text-center mb-16"
          data-aos="fade-up"
        >

          <span class="section-badge">
            Our Philosophy
          </span>

          <h2 class="section-title mt-5">
            Design Principles
            That Drive Results
          </h2>

          <p
            class="section-desc
                   max-w-2xl mx-auto mt-6"
          >

            Every project is guided by
            creativity, strategy and a
            deep understanding of user experience.

          </p>

        </div>

        <!-- GRID -->
        <div
          class="grid grid-cols-1
                 md:grid-cols-2
                 xl:grid-cols-3 gap-8"
        >

          <!-- CARD -->
          <div
            class="modern-card group"
            data-aos="fade-up"
            data-aos-delay="100"
          >

            <img
              src="/clipboard.png"
              class="icon-red w-10 mb-5
                     group-hover:scale-110
                     transition"
            >

            <h3 class="card-title">
              Strategy-First Design
            </h3>

            <p class="card-desc">
              Every design decision supports
              real business objectives,
              not aesthetics alone.
            </p>

          </div>

          <!-- CARD -->
          <div
            class="modern-card group"
            data-aos="fade-up"
            data-aos-delay="200"
          >

            <img
              src="/electricity.png"
              class="icon-red w-10 mb-5
                     group-hover:scale-110
                     transition"
            >

            <h3 class="card-title">
              Authentic Storytelling
            </h3>

            <p class="card-desc">
              We create visuals that
              genuinely communicate
              your brand identity.
            </p>

          </div>

          <!-- CARD -->
          <div
            class="modern-card group"
            data-aos="fade-up"
            data-aos-delay="300"
          >

            <img
              src="/people.png"
              class="icon-red w-10 mb-5
                     group-hover:scale-110
                     transition"
            >

            <h3 class="card-title">
              Collaborative Process
            </h3>

            <p class="card-desc">
              We work closely with
              clients to ensure every
              project reflects their vision.
            </p>

          </div>

          <!-- CARD -->
          <div
            class="modern-card group"
            data-aos="fade-up"
            data-aos-delay="400"
          >

            <img
              src="/download(1).png"
              class="icon-red w-10 mb-5
                     group-hover:scale-110
                     transition"
            >

            <h3 class="card-title">
              Simplicity With Impact
            </h3>

            <p class="card-desc">
              Minimalism combined with
              bold execution for stronger communication.
            </p>

          </div>

          <!-- CARD -->
          <div
            class="modern-card group"
            data-aos="fade-up"
            data-aos-delay="500"
          >

            <img
              src="/padlock.png"
              class="icon-red w-10 mb-5
                     group-hover:scale-110
                     transition"
            >

            <h3 class="card-title">
              User-Centric Thinking
            </h3>

            <p class="card-desc">
              Every visual experience is
              designed with audience
              engagement in mind.
            </p>

          </div>

          <!-- CARD -->
          <div
            class="modern-card group"
            data-aos="fade-up"
            data-aos-delay="600"
          >

            <img
              src="/check-mark(2).png"
              class="icon-red w-10 mb-5
                     group-hover:scale-110
                     transition"
            >

            <h3 class="card-title">
              Quality Assurance
            </h3>

            <p class="card-desc">
              Pixel-perfect design execution
              with rigorous quality standards.
            </p>

          </div>

        </div>

      </div>

    </section>

    <!-- CTA -->
    <section class="py-20">

      <div class="container mx-auto px-6">

        <div
          class="relative overflow-hidden
                 rounded-[40px]
                 bg-gradient-to-r
                 from-tm-red
                 to-red-700
                 p-12 text-center"
          data-aos="zoom-in"
        >

          <!-- DECOR -->
          <div
            class="absolute top-0 right-0
                   w-72 h-72 bg-white/10
                   rounded-full blur-3xl"
          />

          <div class="relative z-10">

            <h2
              class="text-4xl md:text-5xl
                     font-black text-white"
            >

              Let&apos;s Build
              Something Extraordinary

            </h2>

            <p
              class="text-white/80
                     max-w-2xl mx-auto
                     mt-6 text-lg"
            >

              Whether you&apos;re launching a
              startup, refreshing a brand,
              or scaling your business —
              we&apos;re ready to bring your
              vision to life.

            </p>

            <button
              @click="openContactPage"
              class="mt-10 bg-white
                     text-tm-red
                     px-8 py-4 rounded-full
                     font-semibold
                     hover:scale-105
                     transition shadow-2xl"
            >

              Start Your Project →

            </button>

          </div>

        </div>

      </div>

    </section>

    <!-- FOOTER -->
    <Footer />

  </div>
</template>

<script>
import Footer from '@/components/Footer.vue'
import Header from '@/components/Header.vue'
import Marquee from '@/components/Marquee.vue'
import router from '@/router';

export default {

  components: {
    Header,
    Footer,
    Marquee
  },

  methods: {
    openPortfolioPage() {
        router.push('/portfolio')
    },

    openContactPage() {
        router.push('/contact-us')
    }
  }
}
</script>

<style scoped>

.glass-card {
  background: rgba(255,255,255,0.82);
  backdrop-filter: blur(12px);
  border-radius: 32px;
  box-shadow: 0 10px 40px rgba(0,0,0,0.08);
  transition: all 0.35s ease;
}

.glass-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 20px 60px rgba(0,0,0,0.15);
}

.modern-card {
  background: white;
  padding: 32px;
  border-radius: 28px;
  box-shadow: 0 10px 30px rgba(0,0,0,0.08);
  transition: all 0.35s ease;
  position: relative;
  overflow: hidden;
}

.modern-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 20px 60px rgba(0,0,0,0.15);
}

.section-title {
  font-size: 42px;
  font-weight: 900;
  line-height: 1.15;
  color: #111827;
}

.section-desc {
  font-size: 16px;
  color: #6b7280;
  line-height: 1.9;
}

.section-badge {
  display: inline-block;
  padding: 10px 18px;
  border-radius: 999px;
  background: white;
  box-shadow: 0 4px 20px rgba(0,0,0,0.08);
  color: #d62828;
  font-size: 14px;
  font-weight: 600;
}

.card-title {
  font-size: 22px;
  font-weight: 700;
  color: #d62828;
  margin-bottom: 14px;
}

.card-desc {
  color: #6b7280;
  line-height: 1.8;
  font-size: 15px;
}

.icon-red {
  filter:
    brightness(0)
    saturate(100%)
    invert(24%)
    sepia(88%)
    saturate(5065%)
    hue-rotate(355deg)
    brightness(95%)
    contrast(110%);
}

</style>