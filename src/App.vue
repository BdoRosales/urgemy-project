<template>
  <NavBar />

  <router-view />

  <Footer v-if="$route.name !== 'membresias'" />
</template>

<script setup>
import NavBar from './components/navBar.vue'
import Footer from './components/Footer.vue'
import { useRoute } from 'vue-router'

const route = useRoute()
</script>