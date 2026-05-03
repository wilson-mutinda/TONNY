<template>
  <section class="py-16 bg-white">
    <div class="container mx-auto px-6">

      <!-- TITLE -->
      <div class="text-center mb-12" data-aos="fade-up">
        <h4 class="text-4xl font-bold text-tm-red font-futura mb-3">
          Recent Creative Work
        </h4>
        <p class="text-gray-500 max-w-xl mx-auto">
          A showcase of branding, political design, sports creatives, and digital mockups crafted with precision.
        </p>
      </div>

      <!-- GRID -->
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">

        <!-- CARD 1 -->
        <div class="portfolio-card group" data-aos="zoom-in" data-aos-delay="100">
          <div class="img-wrapper">
            <img src="/Hon George-01.jpg" alt="political posters">
          </div>
          <h3 class="card-title">Political Campaigns</h3>
        </div>

        <!-- CARD 2 -->
        <div class="portfolio-card group" data-aos="zoom-in" data-aos-delay="200">
          <div class="img-wrapper">
            <img src="/MURANGA HOCKEY DERBY copy.jpg" alt="sports posters">
          </div>
          <h3 class="card-title">Sports Design</h3>
        </div>

        <!-- CARD 3 -->
        <div class="portfolio-card group" data-aos="zoom-in" data-aos-delay="300">
          <div class="img-wrapper">
            <img src="/TM MERCH.png" alt="mockups">
          </div>
          <h3 class="card-title">Brand Mockups</h3>
        </div>

      </div>

      <!-- CTA -->
      <div class="text-center mt-12" data-aos="fade-up" data-aos-delay="400">
        <RouterLink
          to="/portfolio"
          class="inline-block bg-tm-red hover:bg-red-700 transition px-8 py-3 rounded-full text-white font-semibold shadow-lg"
        >
          Explore Full Portfolio →
        </RouterLink>
      </div>

    </div>
  </section>
</template>

.portfolio-card {
  position: relative;
  overflow: hidden;
  border-radius: 16px;
  background: white;
  box-shadow: 0 10px 30px rgba(0,0,0,0.08);
  transition: all 0.4s ease;
}

.portfolio-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 25px 60px rgba(0,0,0,0.15);
}

/* image wrapper */
.img-wrapper {
  height: 260px;
  overflow: hidden;
}

.img-wrapper img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.6s ease;
}

/* better hover than just zoom */
.portfolio-card:hover img {
  transform: scale(1.1) rotate(1deg);
}

/* title overlay feel */
.card-title {
  padding: 16px;
  font-weight: 600;
  text-align: center;
  color: #d62828;
  font-size: 16px;
}
