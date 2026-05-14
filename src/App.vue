<script setup>
import { ref, onMounted, onUnmounted, computed } from 'vue'

const isMenuOpen = ref(false)
const toggleMenu = () => { isMenuOpen.value = !isMenuOpen.value }

const letrasUrgemy = {
  u: 'https://urgemy.com/_assets/v11/2f5efaf1f19d6798217ff55af31d05be4f104cca.svg',
  r: 'https://urgemy.com/_assets/v11/b175daa701af2224dc1257ed76374c2f20ecb80c.svg',
  g: 'https://urgemy.com/_assets/v11/61ec26193502aeee3d703b506a66910cd28efb41.svg',
  e: 'https://urgemy.com/_assets/v11/0f0670cb3693c29ce2e49f94f48ca3c121400663.svg',
  m: 'https://urgemy.com/_assets/v11/0ac64389b2d2530564f0e32efa8e803ad4e2f926.svg',
  y: 'https://urgemy.com/_assets/v11/c4a54584d7f46131f9a043b2f920994aaac473b1.svg',
}

const pasoActual = ref(0)
let carruselTimer = null

const pasos = [
  { 
    titulo: 'Contáctanos por WhatsApp o desde la app', 
    descripcion: 'Disponible 24/7 con tiempos de respuesta inmediatos.', 
    imagen: 'https://bestlifeonline.com/wp-content/uploads/sites/3/2022/04/young-woman-text-confused-concerned-smishing-fedex-warning.jpg?quality=82&strip=all' 
  },
  { 
    titulo: 'Evaluación por urgenciólogo', 
    descripcion: 'Clasificación de nivel de urgencia. No es un bot. No es un médico general. Es un urgenciólogo certificado', 
    imagen: 'https://images.unsplash.com/photo-1584982751601-97dcc096659c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80' 
  },
  { 
    titulo: 'Recibe orientación o receta', 
    descripcion: 'Recomendación médica + nota digital.', 
    imagen: 'https://images.unsplash.com/photo-1576091160550-2173dba999ef?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80' 
  },
  { 
    titulo: 'Canalización si es necesario', 
    descripcion: 'Con especialistas, laboratorios, ambulancia, psicólogo o nutriólogo.', 
    imagen: 'https://images.unsplash.com/photo-1504439468489-c8920d796a29?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80' 
  },
  { 
    titulo: 'Seguimiento', 
    descripcion: 'El mismo médico da el seguimiento hasta resolver el caso por completo.', 
    imagen: 'https://www.tatvacare.in/wp-content/uploads/2025/03/Untitled-design-2025-03-21T150159.433.png' 
  }
]

const siguientePaso = () => {
  pasoActual.value = (pasoActual.value + 1) % pasos.length
}

const pasoAnterior = () => {
  pasoActual.value = (pasoActual.value - 1 + pasos.length) % pasos.length
  resetTimer()
}

const seleccionarPasoManual = (index) => {
  pasoActual.value = index
  resetTimer()
}

const resetTimer = () => {
  if (carruselTimer) clearInterval(carruselTimer)
  carruselTimer = setInterval(siguientePaso, 5000)
}

const windowWidth = ref(window.innerWidth)
const updateWidth = () => { windowWidth.value = window.innerWidth }

onMounted(() => {
  resetTimer()
  window.addEventListener('resize', updateWidth)
})

onUnmounted(() => {
  if (carruselTimer) clearInterval(carruselTimer)
  window.removeEventListener('resize', updateWidth)
})

const isMobile = computed(() => windowWidth.value < 768)

const testimonioActual = ref(0)
const testimonios = [
  {
    nombre: 'María González',
    texto: '"El servicio que ofrecen es excepcional. Realmente superó todas mis expectativas y estaré regresando pronto."',
    estrellas: 5
  },
  {
    nombre: 'Juan Rodríguez',
    texto: '"Increíble experiencia. El equipo fue profesional y atento a cada detalle durante todo el proceso."',
    estrellas: 5
  },
  {
    nombre: 'Ana López',
    texto: '"Una de las mejores decisiones que he tomado. El resultado final fue exactamente lo que estaba buscando."',
    estrellas: 5
  }
]

const siguienteTestimonio = () => {
  testimonioActual.value = (testimonioActual.value + 1) % testimonios.length
}
const testimonioAnterior = () => {
  testimonioActual.value = (testimonioActual.value - 1 + testimonios.length) % testimonios.length
}
</script>

<template>
  <div>
    <nav class="fixed top-0 left-0 w-full bg-[#335EA9] px-6 py-4 text-white z-50 shadow-md">
      <div class="container mx-auto flex justify-between items-center">
        <div class="flex-none">
          <img 
            src="https://urgemy.com/_assets/v11/f88b8a7ebbce1dd28ec73712242055db7e96a06f.svg" 
            alt="logo"
            class="object-contain"
            style="height: 25px; width: 25px;" 
          >
        </div>

        <button @click="toggleMenu" class="block md:hidden focus:outline-none">
          <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path v-if="!isMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
            <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
          </svg>
        </button>

        <div :class="{ 'hidden': !isMenuOpen, 'flex': isMenuOpen }" 
             class="absolute top-full left-0 w-full bg-[#335EA9] flex-col items-center gap-6 py-6 md:static md:w-auto md:bg-transparent md:flex md:flex-row md:py-0 md:gap-8">
          <button class="bg-[#58B69B] px-4 py-2 rounded-lg font-bold text-sm mb-4 md:mb-0">Descarga la app</button> 
          <ul class="flex flex-col md:flex-row items-center gap-5 list-none m-0 p-0 text-center">
            <li><a href="#" class="text-[14px] hover:text-gray-300">Inicio</a></li>
            <li><a href="#" class="text-[14px] hover:text-gray-300">Membresias</a></li>
            <li><a href="#" class="text-[14px] font-bold hover:text-gray-300">¿Por qué un urgenciólogo?</a></li>
            <li><a href="#" class="text-[14px] font-bold hover:text-gray-300">Empresas</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <section class="relative bg-[#A3C5D9] min-h-[700px] flex flex-col items-center justify-center text-center p-10 mt-[65px]">
      <div class="absolute inset-0 z-0">
        <img 
          src="https://urgemy.com/_assets/v11/75392272d624f38d562aaa4f5cf4a3ef880c4d5b.png?w=2048" 
          class="w-full h-full object-cover brightness-[0.6]"
          alt="background-hands"
        >
      </div>

      <div class="relative z-10 flex flex-col items-center w-full max-w-6xl mx-auto px-4">

        <img 
          src="https://urgemy.com/_assets/v11/f88b8a7ebbce1dd28ec73712242055db7e96a06f.svg" 
          alt="urgemy-logo-icon"
          class="mb-6 h-24 w-24 md:h-40 md:w-40 object-contain" 
        >

        <div class="flex items-end justify-center gap-[1%] md:gap-3 mb-4 w-full max-w-[95%] mx-auto">
  <img :src="letrasUrgemy.u" alt="u" class="h-10 md:h-20 w-[12%] max-w-[50px] md:max-w-[70px] object-contain">
  <img :src="letrasUrgemy.r" alt="r" class="h-10 md:h-20 w-[10%] max-w-[40px] md:max-w-[55px] object-contain">
  <img :src="letrasUrgemy.g" alt="g" class="h-10 md:h-20 w-[12%] max-w-[50px] md:max-w-[75px] object-contain">
  <img :src="letrasUrgemy.e" alt="e" class="h-10 md:h-20 w-[12%] max-w-[50px] md:max-w-[70px] object-contain">
  <img :src="letrasUrgemy.m" alt="m" class="h-10 md:h-20 w-[18%] max-w-[75px] md:max-w-[100px] object-contain">
  <img :src="letrasUrgemy.y" alt="y" class="h-10 md:h-20 w-[11%] max-w-[45px] md:max-w-[65px] object-contain">
</div>

        <div class="flex flex-col items-center gap-2">
          <h2 class="text-white text-2xl md:text-4xl tracking-tight">
            Mi salud es <span class="font-bold">urgente.</span>
          </h2>
        </div>
      </div>
    </section>

    <section class="relative bg-white py-20 overflow-hidden">
      <div class="absolute inset-0 bg-[#F0F4F8]"></div>
      <div class="container mx-auto px-6 relative z-10 grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
        <div class="relative flex justify-center">
          <div class="relative w-full max-w-lg">
            <img 
              src="https://res.cloudinary.com/dhtcufz7z/image/upload/v1768334660/shutterstock_2087366008_cgzqml.jpg" 
              alt="video" 
              class="w-full h-auto object-cover drop-shadow-2xl"
            >
            <button class="absolute inset-0 flex items-center justify-center">
              <div class="bg-white/30 p-5 rounded-full border border-white/50 hover:scale-110 transition-transform">
                <svg class="w-12 h-12 text-white" fill="currentColor" viewBox="0 0 20 20">
                  <path d="M6.3 2.841A1.5 1.5 0 004 4.11V15.89a1.5 1.5 0 002.3 1.269l9.344-5.89a1.5 1.5 0 000-2.538L6.3 2.841z" />
                </svg>
              </div>
            </button>
          </div>
        </div>

        <div class="max-w-xl">
          <h2 class="text-[#335EA9] text-5xl font-extrabold leading-tight mb-6">
            Atención médica inmediata 24/7 con urgenciólogos.
          </h2>
          <p class="text-gray-600 text-lg mb-8 leading-relaxed">
            Consulta por chat o llamada, videollamada con receta digital y derivación médica profesional desde tu celular.
          </p>
          <div class="flex flex-col gap-4">
            <button class="w-full md:w-max px-10 py-4 bg-gradient-to-r from-[#4A7BB7] to-[#58B69B] text-white font-bold rounded-xl shadow-lg hover:opacity-90 transition-opacity">
              Contratar membresía
            </button>
            <div class="flex flex-wrap gap-4 mt-2">
              <button class="px-6 py-2 border-2 border-[#335EA9] text-[#335EA9] font-bold rounded-xl hover:bg-[#335EA9] hover:text-white transition-colors">
                Ver planes familiares
              </button>
              <button class="px-6 py-2 border-2 border-[#335EA9] text-[#335EA9] font-bold rounded-xl hover:bg-[#335EA9] hover:text-white transition-colors">
                Ver planes empresariales
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="relative w-full min-h-[500px] flex items-stretch overflow-hidden">
      <div class="relative w-full md:w-1/2 bg-[#335EA9] flex items-center justify-center p-10 md:p-20 z-10">
        <div class="absolute top-0 right-0 h-full w-20 bg-[#335EA9] translate-x-1/2 skew-x-[-4deg] hidden md:block"></div>
        <div class="max-w-md text-white relative z-20">
          <h2 class="text-3xl font-bold mb-6">¿Qué es Urgemy?</h2>
          <p class="text-sm leading-relaxed mb-6 opacity-90">
            Urgemy es una plataforma de salud digital que conecta a las personas con médicos urgenciólogos certificados 24/7, capaces de evaluar síntomas, orientar, dar recomendaciones, emitir recetas digitales y canalizar con especialistas o laboratorios afiliados.
          </p>
          <p class="text-sm font-semibold mb-8">
            Funciona 100% desde tu celular, sin esperas y sin costos elevados.
          </p>
          <div class="flex gap-4">
            <button class="bg-white text-[#335EA9] px-6 py-2 rounded-md font-bold text-xs hover:bg-gray-100 transition-colors">
              Aliados médicos
            </button>
            <button class="border border-white text-white px-6 py-2 rounded-md font-bold text-xs hover:bg-white/10 transition-colors">
              Preguntas frecuentes
            </button>
          </div>
        </div>
      </div>

      <div class="w-full md:w-1/2 relative bg-gray-200">
        <img 
          src="https://res.cloudinary.com/dhtcufz7z/image/upload/v1768334549/shutterstock_2597855469_jvdi6j.jpg" 
          alt="Doctoras urgemy" 
          class="w-full h-full object-cover"
        >
      </div>
    </section>

    <section class="w-full flex justify-center overflow-hidden bg-[#F0F4F8] max-h-[300px] md:max-h-[650px]">
  <img 
    src="https://urgemy.com/_assets/v11/f439854971cb4be00ebcf951910d74e7dc22c3a9.png?w=2048" 
    alt="Doctor"
    class="w-full h-auto block object-cover object-top"
  >
</section>

    <section class="py-20 bg-gradient-to-tr from-[#3de3a7] via-[#3b82f6] to-[#162a61] text-white overflow-hidden">
      <div class="container mx-auto px-6">
        <div class="flex flex-col md:flex-row items-start md:items-center justify-between gap-12">
          <div class="md:w-1/3">
            <h2 class="text-5xl font-bold leading-tight">¿Qué ofrecemos?</h2>
          </div>
          <ul class="md:w-2/3 space-y-6">
            <li v-for="(item, i) in [
              'Urgenciólogos 24/7 (no médicos generales)',
              'Respuesta inmediata por chat o llamada',
              'Videollamadas con receta digital',
              'Derivación con especialistas y laboratorios aliados',
              'Descuentos locales (solo Colima)',
              'Cobertura familiar (incluye a 4 personas)',
              'Atención empática e inmediata'
            ]" :key="i" class="flex items-start gap-4">
              <span class="text-[#a7f3d0] font-bold text-3xl">✓</span>
              <p class="text-3xl font-medium text-white/90">{{item}}</p>
            </li>
          </ul>
        </div>
      </div>
    </section>

    <section class="py-20 bg-cover bg-center relative" style="background-image: url('https://urgemy.com/_assets/v11/a213102bc4746e213da20ce36521fe60708f7e9f.png');">
      <div class="absolute inset-0 bg-white/10 backdrop-blur-sm"></div>
      <div class="container mx-auto px-6 relative z-10 text-center">
        <h2 class="text-5xl font-bold text-white mb-12">Membresías Destacadas</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-6xl mx-auto">
          <div class="bg-white/90 backdrop-blur-md rounded-2xl overflow-hidden shadow-2xl flex flex-col">
            <div class="bg-[#2b59b4] py-4">
              <h3 class="text-white text-2xl font-bold">Membresía Digital Nacional</h3>
            </div>
            <div class="p-10 flex-grow">
              <p class="text-gray-600 italic mb-4">(para todo México)</p>
              <div class="mb-6">
                <span class="text-3xl font-bold text-gray-800">Desde</span>
                <span class="text-5xl font-extrabold text-[#2b59b4]"> $139</span>
                <span class="text-2xl font-bold text-gray-800">/mes</span>
              </div>
              <ul class="text-left space-y-4">
                <li class="flex items-center gap-3 text-gray-700">
                  <span class="text-blue-600 font-bold">✓</span>
                  Incluye atención digital 24/7 en todo el país
                </li>
              </ul>
            </div>
          </div>
          <div class="bg-white/90 backdrop-blur-md rounded-2xl overflow-hidden shadow-2xl flex flex-col">
            <div class="bg-[#2b59b4] py-4">
              <h3 class="text-white text-2xl font-bold">Membresías Presenciales</h3>
            </div>
            <div class="p-10 flex-grow">
              <p class="text-gray-600 italic mb-4">(solo Colima)</p>
              <div class="flex justify-center gap-2 mb-6">
                <span class="bg-[#e67e22] text-white px-4 py-1 rounded-full text-xs font-bold uppercase">Bronce</span>
                <span class="bg-[#95a5a6] text-white px-4 py-1 rounded-full text-xs font-bold uppercase">Plata</span>
                <span class="bg-[#f1c40f] text-white px-4 py-1 rounded-full text-xs font-bold uppercase">Oro</span>
              </div>
              <ul class="text-left space-y-3">
                <li v-for="(feat, i) in ['Acceso a urgenciólogos', 'Descuentos con especialistas', 'Videollamadas', 'Consultas presenciales', 'Ambulancia (según nivel)']" :key="i" class="flex items-center gap-3 text-gray-700">
                  <span class="text-blue-600 font-bold">✓</span> {{ feat }}
                </li>
              </ul>
            </div>
          </div>
        </div>
        <button class="mt-12 bg-[#2b59b4] hover:bg-blue-700 text-white px-10 py-4 rounded-xl font-bold transition-all shadow-xl text-lg">
          Ver comparativa completa
        </button>
      </div>
    </section>

    <section class="relative w-full overflow-hidden">
      <div class="bg-[#335EA9] py-4 text-center">
        <h2 class="text-white text-xl md:text-2xl font-bold">¿Cómo funciona Urgemy?</h2>
      </div>
      <div class="relative h-[500px] md:h-[600px] w-full">
        <img 
          :src="pasos[pasoActual].imagen" 
          class="absolute inset-0 w-full h-full object-cover transition-all duration-700 ease-in-out"
          alt="Fondo paso"
        >
        <div class="absolute inset-0 bg-black/30"></div>
        <div class="absolute bottom-12 left-1/2 -translate-x-1/2 w-[90%] max-w-md bg-white/20 backdrop-blur-xl border border-white/30 p-8 rounded-3xl shadow-2xl flex items-start gap-5 transition-all duration-500 transform hover:scale-[1.02]">
          <div class="bg-blue-600 backdrop-blur-md text-[#ffffff] w-10 h-10 rounded-full flex items-center justify-center flex-shrink-0 font-black border border-white/40 shadow-md">
            {{ pasoActual + 1 }}
          </div>
          <div>
            <h3 class="text-white font-black text-xl leading-tight mb-2 drop-shadow-md">
              {{ pasos[pasoActual].titulo }}
            </h3>
            <p class="text-white/90 text-sm leading-relaxed font-medium">
              {{ pasos[pasoActual].descripcion }}
            </p>
          </div>
        </div>
        <button @click="pasoAnterior" class="absolute left-6 top-1/2 -translate-y-1/2 bg-white/20 backdrop-blur-md p-3 rounded-full text-white border border-white/30 hover:bg-white/40 transition-all active:scale-95 shadow-lg">
          <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M15 19l-7-7 7-7" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
        </button>
        <button @click="siguientePaso" class="absolute right-6 top-1/2 -translate-y-1/2 bg-white/20 backdrop-blur-md p-3 rounded-full text-white border border-white/30 hover:bg-white/40 transition-all active:scale-95 shadow-lg">
          <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M9 5l7 7-7 7" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
        </button>
        <div class="absolute bottom-4 left-1/2 -translate-x-1/2 flex gap-3">
          <div v-for="(_, index) in pasos" :key="index" @click="seleccionarPasoManual(index)" :class="['w-2.5 h-2.5 rounded-full cursor-pointer transition-all duration-300', pasoActual === index ? 'bg-white w-8 shadow-[0_0_10px_rgba(255,255,255,0.8)]' : 'bg-white/40 hover:bg-white/60']"></div>
        </div>
      </div>
    </section>

    <section class="py-24 bg-gradient-to-b from-[#335EA9] to-[#58B69B] relative overflow-hidden">
      <div class="container mx-auto px-6 relative z-10">
        <h2 class="text-4xl md:text-5xl font-bold text-white text-center mb-16">
          Testimonios
        </h2>
        <div class="relative max-w-5xl mx-auto">
          <div class="flex flex-col md:flex-row gap-6 transition-all duration-500 ease-in-out">
            <div v-for="(t, index) in testimonios.slice(testimonioActual, testimonioActual + (isMobile ? 1 : 3)).concat(testimonios.slice(0, Math.max(0, (testimonioActual + (isMobile ? 1 : 3)) - testimonios.length)))" :key="index" class="bg-white rounded-2xl p-8 shadow-xl flex-1 transform transition-transform hover:-translate-y-2">
              <div class="flex gap-1 mb-4">
                <span v-for="i in t.estrellas" :key="i" class="text-yellow-400 text-xl">★</span>
              </div>
              <p class="text-gray-600 italic mb-6 leading-relaxed">
                {{ t.texto }}
              </p>
              <p class="text-[#335EA9] font-bold text-lg">
                {{ t.nombre }}
              </p>
            </div>
          </div>
          <button @click="testimonioAnterior" class="absolute -left-4 md:-left-12 top-1/2 -translate-y-1/2 bg-white text-[#335EA9] p-3 rounded-full shadow-lg hover:scale-110 transition-transform">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M15 19l-7-7 7-7" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/></svg>
          </button>
          <button @click="siguienteTestimonio" class="absolute -right-4 md:-right-12 top-1/2 -translate-y-1/2 bg-white text-[#335EA9] p-3 rounded-full shadow-lg hover:scale-110 transition-transform">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M9 5l7 7-7 7" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/></svg>
          </button>
          <div class="flex justify-center gap-2 mt-12">
            <div v-for="(_, index) in testimonios" :key="index" @click="testimonioActual = index" :class="['w-2.5 h-2.5 rounded-full cursor-pointer transition-all', testimonioActual === index ? 'bg-white w-6' : 'bg-white/40']"></div>
          </div>
        </div>
      </div>
    </section>

    <section>
      

    </section>
  </div>
</template>