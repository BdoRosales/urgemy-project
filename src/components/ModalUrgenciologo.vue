<template>
  <div 
    v-if="isOpen" 
    class="fixed inset-0 z-50 flex items-center justify-center bg-black/60 backdrop-blur-sm p-4 md:p-6"
    @click.self="$emit('close')"
  >
    <div class="bg-[#192231] w-full max-w-5xl rounded-xl overflow-hidden shadow-2xl flex flex-col md:flex-row relative max-h-[90vh]">
      
      <button 
        @click="$emit('close')" 
        class="absolute top-4 right-4 text-gray-400 hover:text-white transition-colors z-30"
      >
        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
        </svg>
      </button>

      <div class="w-full md:w-2/5 relative bg-gray-800 hidden md:block">
        <img 
          src="https://res.cloudinary.com/dhtcufz7z/image/upload/v1768335146/shutterstock_2652435837_zuvvim.jpg" 
          alt="Médico Urgemy" 
          class="w-full h-full object-cover object-center"
        >
      </div>

      <div class="w-full md:w-3/5 p-6 md:p-8 flex flex-col justify-between overflow-y-auto">
        <div>
          <h2 class="text-white text-xl md:text-2xl font-bold mb-4 pr-8">
            ¿Por qué un Urgenciólogo y no un Médico General?
          </h2>

          <p class="text-gray-400 text-xs md:text-sm mb-6 leading-relaxed">
            En Urgemy decidimos trabajar exclusivamente con médicos urgenciólogos porque son los especialistas mejor preparados para evaluar problemas de salud en el momento en que ocurren. Aquí te lo explicamos con puntos muy claros:
          </p>

          <div class="space-y-2">
            <div 
              v-for="item in puntos" 
              :key="item.id" 
              class="border-b border-gray-700 last:border-b-0 pb-2"
            >
              <button 
                @click="toggleItem(item.id)"
                class="w-full flex justify-between items-center py-2 text-left text-white font-semibold text-sm md:text-base hover:text-blue-400 transition-colors"
              >
                <span>{{ item.titulo }}</span>
                <span class="text-xl text-gray-400">
                  {{ itemActivo === item.id ? '-' : '+' }}
                </span>
              </button>

              <div 
                v-show="itemActivo === item.id"
                class="text-gray-300 text-xs md:text-sm pt-1 pb-2 whitespace-pre-line leading-relaxed pl-2"
              >
                {{ item.contenido }}
              </div>
            </div>
          </div>
        </div>

        <div class="mt-6 pt-4 border-t border-gray-700 flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
          <div class="text-[11px] md:text-xs text-gray-400 max-w-md leading-tight">
            Mientras otras plataformas usan médicos generales, Urgemy va un paso adelante:<br>
            <span class="text-white font-semibold">Urgemy = urgenciólogos 24/7:</span> mayor precisión, más seguridad, mejores decisiones. Porque tu salud es urgente.
          </div>
          <button 
            @click="$emit('close')"
            class="px-5 py-2 bg-gray-700 hover:bg-gray-600 text-white font-medium rounded-lg text-sm transition-colors self-end sm:self-auto"
          >
            Cerrar
          </button>
        </div>

      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, watch, onUnmounted } from 'vue'

const props = defineProps({
  isOpen: Boolean
})

defineEmits(['close'])

const itemActivo = ref(1) 

const toggleItem = (id) => {
  itemActivo.value = itemActivo.value === id ? null : id
}

watch(() => props.isOpen, (nuevoEstado) => {
  if (nuevoEstado) {
    document.body.classList.add('overflow-hidden')
  } else {
    document.body.classList.remove('overflow-hidden')
  }
}, { immediate: true }) 

onUnmounted(() => {
  document.body.classList.remove('overflow-hidden')
})

const puntos = [
  {
    id: 1,
    titulo: '1. Los urgenciólogos están entrenados para salvar vidas',
    contenido: 'A diferencia de un médico general, un urgenciólogo está especializado en:\n• Reconocer señales de alarma desde el primer minuto.\n• Identificar si un síntoma puede volverse una emergencia.\n• Actuar con rapidez y criterio clínico especializado.\nSon expertos en tomar decisiones rápidas y seguras.'
  },
  {
    id: 2,
    titulo: '2. Saben distinguir entre una urgencia y una emergencia',
    contenido: 'La mayoría de problemas de salud no requieren ir al hospital, pero sí necesitan una valoración profesional inmediata. Un urgenciólogo:\n • Clasifica la gravedad de tus síntomas.\n • Evita que te asustes de más.\n • O te alerta a tiempo si necesitas acudir a un hospital. Esto reduce riesgos y evita gastos innecesarios.'
  },
  {
    id: 3,
    titulo: '3. Su evaluación es mucho más precisa',
    contenido: 'Un urgenciólogo:\n • Evalúa síntomas complejos cuando se presentan “fuera de control”.\n • Sabe interpretar dolor, presión, mareos, fiebre, dificultad para respirar, etc.\n • Determina si se trata de algo simple o algo que necesita atención inmediata.\n Un médico general generalmente no tiene esta especialización.'
  },
  {
    id: 4,
    titulo: '4. Están acostumbrados a atender por teléfono, chat o videollamada',
    contenido: 'La medicina de urgencias tiene protocolos muy específicos para valorar a un paciente sin verlo físicamente.\n Por eso pueden:\n • Guiarte con preguntas precisas.\n • Identificar riesgos a distancia.\n • Solicitar maniobras o mediciones simples que ayudan al diagnóstico.\n La diferencia en calidad es enorme.'
  },
  {
    id: 5,
    titulo: '5. Reducen hospitalizaciones innecesarias',
    contenido: 'Muchos casos llegan a urgencias sin necesitarlo.\n Los urgenciólogos saben identificar:\n • Qué sí amerita hospital.\n • Qué se puede resolver en casa.\n • Qué se puede resolver por videollamada.\n Esto ahorra dinero, tiempo y estrés.'
  },
  {
    id: 6,
    titulo: '6. En resumen: te dan mas seguridad',
    contenido: 'Un urgenciólogo te da tranquilidad real, porque es el especialista que más experiencia tiene en:\n • Casos inesperados\n • Dolor repentino\n • Síntomas que asustan\n • Situaciones que requieren decisión inmediata\n En Urgemy preferimos darte la mejor atención desde el primer minuto.'
  },
]
</script>