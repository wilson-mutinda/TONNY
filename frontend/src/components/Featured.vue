<template>
    <div class="">
        <section class="py-4 mb-4">
            <!-- container -->
             <div class="container mx-auto px-4">
                <h4 class="font-semibold text-3xl text-center">Featured Work</h4>

                <!-- featured images -->
                 <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mt-4">

                    <!-- img 1 -->
                     <div class="p-2 bg-black/50 rounded-md flex flex-col items-center relative group">
                        <img src="/Hon George-01.jpg" alt="political posters" class="transition-all duration-300 ease-out hover:scale-125 group-hover:z-10">
                        <span class="text-tm-gray font-semibold mt-1">Political Posters</span>
                     </div>

                     <!-- img 2 -->
                      <div class="p-2 bg-black/50 rounded-md flex flex-col items-center relative group">
                        <img src="/MURANGA HOCKEY DERBY copy.jpg" alt="sports posters" class="transition-all duration-300 ease-out hover:scale-125 group-hover:z-10">
                        <span class="text-tm-gray font-semibold mt-1">Sports Posters</span>
                      </div>

                      <!-- img 3 -->
                       <div class="p-2 bg-black/50 rounded-md flex flex-col items-center relative group">
                        <img src="/TM MERCH.png" alt="travel posters" class="transition-all duration-300 ease-out hover:scale-125 group-hover:z-10">
                        <span class="text-tm-gray font-semibold mt-1">Mockups</span>
                       </div>

                 </div>

                 <!-- button -->
                  <div class="mt-8 text-center">
                    <RouterLink to="/portfolio" class="bg-tm-red rounded-full px-4 py-2 text-tm-gray">
                        Explore Portfolio
                        <!-- <img src="/right-up.png" alt="" width="20"> -->
                    </RouterLink>
                    <!-- <button type="button" class="bg-tm-red rounded-md px-4 py-2 text-tm-gray">
                        Explore Our Portfolio
                    </button> -->
                  </div>
             </div>
        </section>
    </div>
</template>

<script>
    export default {}
</script>
