<template>
    <a :href="link" target="_blank" class="whatsapp">
        <img src="/whatsapp.png" alt="">
    </a>
</template>

<script setup>
const phone = "254748244583"
const message = "Hello, I'm interested in your services."
const link = `https://wa.me/${phone}?text=${encodeURIComponent(message)}`
</script>

<style>
.whatsapp {
    position: fixed;
    bottom: 20px;
    right: 20px;
    width: 60px;
    height: 60px;
    background: #25d366;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 28px;
    text-decoration: none;
    z-index: 999;
    cursor: pointer;
}
</style>
