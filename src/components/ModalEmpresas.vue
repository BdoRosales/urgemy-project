<template>
  <Transition name="fade">
    <div 
      v-if="isOpen" 
      class="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/60 backdrop-blur-sm"
      @click.self="emit('close')"
    >
      <div class="relative w-full max-w-[1000px] h-[90vh] md:h-[640px] bg-[#111827] text-white rounded-[24px] shadow-2xl overflow-hidden flex flex-col md:flex-row border border-white/10">
        
        <button 
          @click="emit('close')" 
          class="absolute top-4 right-4 z-30 text-gray-400 hover:text-white bg-gray-800/50 hover:bg-gray-800 p-2 rounded-full transition-colors cursor-pointer focus:outline-none"
        >
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>

        <div class="relative w-full md:w-[40%] h-[200px] md:h-auto bg-cover bg-center shrink-0 flex items-end">
          <img 
            src="https://res.cloudinary.com/dhtcufz7z/image/upload/v1768333827/2_hl7dqy.jpg" 
            alt="Beneficios Empresa" 
            class="absolute inset-0 w-full h-full object-cover object-top"
          />
          <div class="absolute inset-0 bg-gradient-to-t from-[#111827] via-transparent to-transparent md:hidden"></div>
        </div>

        <div class="w-full md:w-[60%] p-6 md:p-8 flex flex-col justify-between overflow-y-auto custom-scrollbar">
          <div>
            <h2 class="text-xl md:text-2xl font-bold text-white mb-2 pr-8 [text-wrap:balance]">
              Beneficios para tu Empresa
            </h2>
            <p class="text-xs md:text-sm text-gray-400 mb-6 leading-relaxed">
              La salud de tus empleados también es productividad. Urgemy ofrece atención médica inmediata por urgenciólogos 24/7, reduciendo riesgos, costos y tiempos perdidos, mientras protege a tu equipo y mejora la eficiencia de tu empresa. Aquí tienes los beneficios reales y comprobables para tu organización:
            </p>

            <div class="space-y-3 border-t border-b border-gray-800/60 py-4">
              <div v-for="item in puntos" :key="item.id" class="border-b border-gray-800/40 pb-3 last:border-none last:pb-0">
                <button 
                  @click="toggleItem(item.id)" 
                  class="w-full flex justify-between items-center text-left py-2 font-bold text-sm md:text-base hover:text-blue-400 transition-colors cursor-pointer focus:outline-none"
                >
                  <span :class="{'text-blue-400': itemActivo === item.id}">{{ item.titulo }}</span>
                  <span class="text-lg font-light shrink-0 ml-2">{{ itemActivo === item.id ? '−' : '+' }}</span>
                </button>
                <div 
                  class="grid transition-all duration-300 ease-in-out text-xs md:text-sm text-gray-400"
                  :class="itemActivo === item.id ? 'grid-rows-[1fr] opacity-100 mt-2' : 'grid-rows-[0fr] opacity-0 overflow-hidden'"
                >
                  <div class="overflow-hidden leading-relaxed space-y-2 whitespace-pre-line">
                    {{ item.contenido }}
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="flex items-center justify-between mt-6 pt-4 gap-4 flex-wrap md:flex-nowrap border-t border-gray-800/60">
            <span class="text-[11px] text-gray-500 whitespace-nowrap">© 2026 Urgemy</span>
            
            <div class="flex items-center gap-2 w-full md:w-auto justify-end">
              <button 
                @click="emit('close')"
                class="px-5 py-2.5 rounded-xl bg-gray-800 hover:bg-gray-700 font-bold text-xs md:text-sm text-gray-300 hover:text-white transition-colors cursor-pointer w-1/2 md:w-auto text-center"
              >
                Cerrar
              </button>
              <button 
                @click="emit('goToEmpresarial')"
                class="px-5 py-2.5 rounded-xl bg-gradient-to-r from-[#22d3ee] to-[#0284c7] font-bold text-xs md:text-sm text-white shadow-lg shadow-sky-500/10 hover:brightness-110 transition-all cursor-pointer w-1/2 md:w-auto text-center"
              >
                Ver planes empresariales
              </button>
            </div>
          </div>

        </div>
      </div>
    </div>
  </Transition>
</template>

<script setup>
import { ref, watch, onUnmounted } from 'vue'

const props = defineProps({
  isOpen: Boolean
})

const emit = defineEmits(['close', 'goToEmpresarial'])

const itemActivo = ref(1)

const toggleItem = (id) => {
  itemActivo.value = itemActivo.value === id ? null : id
}

watch(() => props.isOpen, (nuevoEstado) => {
  if (typeof document !== 'undefined') {
    if (nuevoEstado) {
      document.body.classList.add('overflow-hidden')
    } else {
      document.body.classList.remove('overflow-hidden')
    }
  }
}, { immediate: true })

onUnmounted(() => {
  if (typeof document !== 'undefined') {
    document.body.classList.remove('overflow-hidden')
  }
})

const puntos = [
  {
    id: 1,
    titulo: '1. Reduce la prima de riesgo ante el IMSS',
    contenido: 'La atención inmediata y especializada de Urgemy permite mitigar riesgos en incidentes laborales menores, evitando que escalen a problemas mayores y ayudando a documentar adecuadamente cada caso, impactando positivamente en el control interno de siniestralidad de tu empresa.'
  },
  {
    id: 2,
    titulo: '2. Disminuye el ausentismo y aumenta la productividad',
    contenido: 'Muchos empleados faltan por problemas menores que pudieron resolverse desde casa en minutos.\n\nCon Urgemy:\n• Obtienen atención de urgencias digital en menos de 3 minutos.\n• Reciben indicaciones claras para continuar su jornada.\n• Evitan traslados innecesarios a consultorios u hospitales.\n\nEfecto en la empresa: Menos tiempo perdido + empleados atendidos a tiempo = operación más estable y eficiente.'
  },
  {
    id: 3,
    titulo: '3. Prestación 100% deducible y fiscalmente inteligente',
    contenido: 'Urgemy permite:\n• Emitir factura deducible mes con mes.\n• Integrarse como un beneficio dentro de previsión social.\n• Aplicar acreditamientos que optimizan el pago de ISR.\n\nEsto convierte un gasto obligatorio en una inversión fiscalmente eficiente que también mejora el bienestar laboral.'
  }
]
</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}

.custom-scrollbar::-webkit-scrollbar {
  width: 6px;
}
.custom-scrollbar::-webkit-scrollbar-track {
  background: #111827;
}
.custom-scrollbar::-webkit-scrollbar-thumb {
  background: #1f2937;
  border-radius: 9999px;
}
.custom-scrollbar::-webkit-scrollbar-thumb:hover {
  background: #374151;
}
</style>