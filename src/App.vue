<template>
  <NavBar @open-urgenciologo="isUrgenciologoModalOpen = true" />

  <ModalUrgenciologo 
    :isOpen="isUrgenciologoModalOpen" 
    @close="isUrgenciologoModalOpen = false" 
  />

  <router-view />

  <Footer v-if="$route.name !== 'membresias'" />
</template>

<script setup>
import { ref } from 'vue'
import NavBar from './components/navBar.vue'
import Footer from './components/Footer.vue'
import { useRoute } from 'vue-router'
import ModalUrgenciologo from './components/ModalUrgenciologo.vue'

const route = useRoute()

const isUrgenciologoModalOpen = ref(false)
</script>