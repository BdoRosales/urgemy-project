<template>
  <NavBar 
    @open-urgenciologo="isUrgenciologoModalOpen = true" 
    @open-empresas="isEmpresasModalOpen = true"
  />

  <ModalUrgenciologo 
    :isOpen="isUrgenciologoModalOpen" 
    @close="isUrgenciologoModalOpen = false" 
  />

  <ModalEmpresas 
    :isOpen="isEmpresasModalOpen" 
    @close="isEmpresasModalOpen = false" 
  />

  <router-view />

  <Footer v-if="$route.name !== 'membresias'" />
</template>

<script setup>
import { ref } from 'vue'
import { useRoute } from 'vue-router'
import NavBar from './components/navBar.vue'
import Footer from './components/Footer.vue'
import ModalUrgenciologo from './components/ModalUrgenciologo.vue'
import ModalEmpresas from './components/ModalEmpresas.vue'

const route = useRoute()

const isUrgenciologoModalOpen = ref(false)
const isEmpresasModalOpen = ref(false)
</script>