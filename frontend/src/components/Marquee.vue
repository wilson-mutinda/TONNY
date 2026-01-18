<template>
    <div class="">
        <section class="w-full overflow-hidden bg-white border-y top-20 left-0 fixed z-40">
        <div class="relative flex">
            <h4
            class="whitespace-nowrap text-sm text-tm-red animate-marquee"
            >
            🎨✨ Catchy Designs for Memorable Spaces 🏡🖌️ 
            </h4>
        </div>
        </section>
    </div>
</template>

<script>
    export default {}
</script>

<style scoped>
    @keyframes marquee {
  0% {
    transform: translateX(100vw);
  }
  100% {
    transform: translateX(-100%);
  }
}

.animate-marquee {
  animation: marquee 12s linear infinite;
}
</style>
