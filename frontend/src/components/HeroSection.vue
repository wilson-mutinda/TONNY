<template>
  <div>

    <!-- ================= HERO SECTION ================= -->
    <section class="relative w-full h-[650px] overflow-hidden">

          <!-- Background -->
          <img
            src="/Background 3.jpg"
            alt="hero"
            class="absolute inset-0 w-full h-full object-cover"
          />

          <!-- Dark Overlay -->
          <div class="absolute inset-0 bg-black/70"></div>

          <!-- CENTER CONTENT WRAPPER -->
          <div class="absolute inset-0 flex flex-col items-center justify-center z-10 space-y-12">

            <!-- Marquee -->
            <div class="relative w-full overflow-hidden group">

              <div class="flex animate-marquee group-hover:[animation-play-state:paused]">

                <!-- FIRST SET -->
                <div class="flex gap-6 min-w-max px-6">
                  <div class="service-card">
                    <h3>Branding & Identity</h3>
                    <p>Logos, brand systems, strategy & guidelines</p>
                  </div>

                  <div class="service-card">
                    <h3>Graphic & Digital Design</h3>
                    <p>Social media, UI, ads, presentations</p>
                  </div>

                  <div class="service-card">
                    <h3>Print & Offline Design</h3>
                    <p>Business cards, brochures, posters</p>
                  </div>

                  <div class="service-card">
                    <h3>Copywriting & Content</h3>
                    <p>Website copy, blogs, captions</p>
                  </div>

                  <div class="service-card">
                    <h3>UX / Digital Strategy</h3>
                    <p>Wireframes, UI systems, landing pages</p>
                  </div>
                </div>

                <!-- DUPLICATE -->
                <div class="flex gap-6 min-w-max px-6">
                  <div class="service-card">
                    <h3>Branding & Identity</h3>
                    <p>Logos, brand systems, strategy & guidelines</p>
                  </div>

                  <div class="service-card">
                    <h3>Graphic & Digital Design</h3>
                    <p>Social media, UI, ads, presentations</p>
                  </div>

                  <div class="service-card">
                    <h3>Print & Offline Design</h3>
                    <p>Business cards, brochures, posters</p>
                  </div>

                  <div class="service-card">
                    <h3>Copywriting & Content</h3>
                    <p>Website copy, blogs, captions</p>
                  </div>

                  <div class="service-card">
                    <h3>UX / Digital Strategy</h3>
                    <p>Wireframes, UI systems, landing pages</p>
                  </div>
                </div>

              </div>
            </div>

            <!-- VIEW WORK BUTTON -->
            <RouterLink
              to="/portfolio"
              class="bg-tm-red hover:bg-red-700 transition px-8 py-3 rounded-full text-white font-semibold shadow-lg"
            >
              View Our Work
            </RouterLink>

          </div>
    </section>

  </div>
</template>

<script>
import { RouterLink } from 'vue-router'
export default {}
</script>

<style scoped>

/* ===== Marquee Animation ===== */
@keyframes marquee {
  from { transform: translateX(0%); }
  to { transform: translateX(-50%); }
}

/* Default (Desktop) */
.animate-marquee {
  animation: marquee 15s linear infinite;
}

/* Medium screens */
@media (max-width: 1024px) {
  .animate-marquee {
    animation: marquee 10s linear infinite;
  }
}

/* Small screens */
@media (max-width: 640px) {
  .animate-marquee {
    animation: marquee 5s linear infinite;
  }
}

/* ===== Service Card Styling ===== */
.service-card {
  width: 280px;
  background: rgba(255, 255, 255, 0.95);
  padding: 24px;
  border-radius: 16px;
  box-shadow: 0 15px 40px rgba(0,0,0,0.15);
  backdrop-filter: blur(6px);
  transition: transform 0.3s ease;
}

@media (max-width: 640px) {
  .service-card {
    width: 260px;
  }
}

.service-card:hover {
  transform: translateY(-8px);
}

.service-card h3 {
  font-weight: 600;
  color: #d62828;
  margin-bottom: 10px;
}

.service-card p {
  font-size: 14px;
  color: #555;
}

</style>