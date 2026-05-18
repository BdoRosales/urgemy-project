<template>
<nav class="fixed top-0 left-0 w-full bg-[#335EA9] px-6 py-4 text-white z-50 shadow-md">
  <div class="container mx-auto flex justify-between items-center">
    <div class="flex-none">
      <router-link to="/" class="block hover:opacity-80 transition-opacity" @click="isMenuOpen = false">
        <img 
          src="https://urgemy.com/_assets/v11/f88b8a7ebbce1dd28ec73712242055db7e96a06f.svg" 
          alt="logo"
          class="object-contain"
          style="height: 25px; width: 25px;" 
        >
      </router-link>
    </div>

    <button @click="toggleMenu" class="block md:hidden focus:outline-none cursor-pointer">
      <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path v-if="!isMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
        <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
    </button>

    <div :class="{ 'hidden': !isMenuOpen, 'flex': isMenuOpen }" 
         class="absolute top-full left-0 w-full bg-[#335EA9] flex-col items-center gap-6 py-6 md:static md:w-auto md:bg-transparent md:flex md:flex-row md:py-0 md:gap-8">
      <button class="bg-[#58B69B] px-4 py-2 rounded-lg font-bold text-sm mb-4 md:mb-0 cursor-pointer">Descarga la app</button> 
      <ul class="flex flex-col md:flex-row items-center gap-5 list-none m-0 p-0 text-center">
        <li>
          <router-link to="/" class="text-[14px] hover:text-gray-300" @click="isMenuOpen = false">Inicio</router-link>
        </li>
        <li>
          <router-link to="/membresias" class="text-[14px] hover:text-gray-300" @click="isMenuOpen = false">Membresias</router-link>
        </li>
        <li>
          <router-link to="/urgenciologo" class="text-[14px] font-bold hover:text-gray-300" @click="isMenuOpen = false">¿Por qué un urgenciólogo?</router-link>
        </li>
        <li>
          <router-link to="/empresas" class="text-[14px] font-bold hover:text-gray-300" @click="isMenuOpen = false">Empresas</router-link>
        </li>
      </ul>
    </div>
  </div>
</nav>
</template>

<script setup>
import { ref } from 'vue';

const isMenuOpen = ref(false);

 const toggleMenu = () => {
  isMenuOpen.value = !isMenuOpen.value;
};
</script>