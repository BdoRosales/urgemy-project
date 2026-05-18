<template>
  <section class="relative min-h-screen pt-28 pb-20 px-4 md:px-10 overflow-hidden">
    <div class="fixed inset-0 z-0 bg-cover bg-center bg-no-repeat blur-background scale-105"
         style="background-image: url('https://urgemy.com/_assets/v11/9262fef36fc968855e77ab8b3a520cad97783159.png')">
    </div>

    <div class="relative z-10 max-w-[1200px] mx-auto">
      <div class="text-center mb-12">
        <h1 class="text-2xl md:text-4xl text-white font-bold mb-8 drop-shadow-lg">
          Elige el plan ideal para tu familia o empresa
        </h1>
        <div class="inline-flex bg-white/90 backdrop-blur-sm rounded-full p-1 shadow-md border border-blue-100">
          <button 
            @click="isEmpresarial = false"
            :class="!isEmpresarial ? 'bg-[#335EA9] text-white' : 'text-[#335EA9] hover:bg-gray-50'"
            class="px-6 py-2 rounded-full font-bold text-sm transition-all cursor-pointer"
          >
            Planes familiares
          </button>
          <button 
            @click="isEmpresarial = true"
            :class="isEmpresarial ? 'bg-[#335EA9] text-white' : 'text-[#335EA9] hover:bg-gray-50'"
            class="px-6 py-2 rounded-full font-bold text-sm transition-all cursor-pointer"
          >
            Planes empresariales
          </button>
        </div>
      </div>

      <div v-if="!isEmpresarial" class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
        <div class="bg-white/95 backdrop-blur-md rounded-[32px] shadow-2xl border border-white/20 p-8 flex flex-col h-fit">
          <h3 class="text-2xl font-bold text-center text-[#335EA9] mb-2">Membresía Digital Nacional</h3>
          <p class="text-center text-gray-500 text-sm mb-6">Un plan básico, válido en todo México</p>
          
          <div class="text-center mb-8">
            <span class="text-3xl font-black text-gray-900">$139 al mes / $1,390 al año</span>
          </div>

          <ul class="space-y-3 mb-6 flex-grow">
            <li v-for="(text, i) in benefitsDigital" :key="i" class="flex items-start gap-3 text-sm text-gray-700 leading-tight">
              <span class="text-[#51C0A4] font-bold">✔</span> 
              <span :class="{'font-bold text-gray-900': i === benefitsDigital.length - 1}">
                {{ text }}
              </span>
            </li>
          </ul>

          <p class="text-[14px] text-red-600 text-center font-medium mb-6 italic">
            Beneficios presenciales no incluidos. Aplica en todo México.
          </p>

          <div class="space-y-3">
            <button class="w-full py-4 rounded-xl bg-gradient-to-r from-[#335EA9] to-[#51C0A4] text-white font-bold shadow-lg hover:brightness-110 transition-all">
              Contratar ahora
            </button>
            <button class="w-full py-3 rounded-xl border-2 border-[#335EA9] text-[#335EA9] font-bold text-sm flex items-center justify-center gap-2 hover:bg-blue-50 transition-all">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4" /></svg>
              Descargar comparativa (.pdf)
            </button>
          </div>
        </div>

        <div class="bg-white/95 backdrop-blur-md rounded-[32px] shadow-2xl border border-white/20 overflow-hidden flex flex-col transform md:scale-105 z-20 transition-all duration-300">
          <div class="p-8 pb-4">
            <h3 class="text-xl font-bold text-center text-[#335EA9] mb-4">Membresías con Beneficios Presenciales <span class="text-xs font-normal text-gray-400">(sólo Colima)</span></h3>
            
            <div class="flex justify-center items-center gap-2 mb-8 bg-gray-100 p-1 rounded-full w-fit mx-auto">
              <button v-for="(plan, key) in plans" :key="key" @click="activePlan = key"
                :class="activePlan === key ? plan.colorClass + ' text-white shadow-md' : 'text-gray-500 hover:text-gray-700'"
                class="px-5 py-1.5 rounded-full font-bold text-sm transition-all">
                {{ plan.name }}
              </button>
            </div>

            <div class="text-center mb-6">
              <p v-if="plans[activePlan].desc" class="text-gray-500 text-xs mb-3 italic px-4">"{{ plans[activePlan].desc }}"</p>
              <div class="flex flex-col">
                <span class="text-3xl font-black text-gray-900">${{ plans[activePlan].monthly }} al mes</span>
                <span class="text-lg text-gray-400 font-bold">/ ${{ plans[activePlan].yearly }} al año</span>
              </div>
            </div>

            <ul class="space-y-3 mb-8">
              <li v-for="(benefit, i) in plans[activePlan].benefits" :key="i" class="flex items-start gap-3 text-[13px] text-gray-700 leading-tight">
                <span class="text-[#51C0A4] font-bold">✔</span>
                <span :class="{'font-bold text-gray-900': benefit.highlight}">{{ benefit.text }}</span>
              </li>
            </ul>

            <button class="w-full py-4 rounded-xl bg-gradient-to-r from-[#335EA9] to-[#51C0A4] text-white font-bold shadow-lg hover:brightness-110 transition-all mb-8">
              Contratar {{ plans[activePlan].name }}
            </button>

            <div class="border-t border-gray-100 pt-6">
               <div class="flex justify-between items-center mb-3">
                  <span class="text-lg font-bold text-gray-900">Pase 24 horas</span>
                  <span class="text-2xl font-black text-[#335EA9]">$499</span>
               </div>
               <p class="text-[11px] text-gray-500 leading-tight mb-5 italic">
                  Atención ilimitada durante 24 horas para el titular. El monto pagado se toma en cuenta si contrata membresía mensual o anual en las 48h posteriores.
               </p>
               
               <button class="w-full py-4 rounded-xl bg-gradient-to-r from-[#335EA9] to-[#51C0A4] text-white font-bold shadow-lg hover:brightness-110 transition-all">
                  Adquirir Pase 24h
               </button>
            </div>
          </div>
        </div>
      </div>

      <div v-else class="grid grid-cols-1 md:grid-cols-2 gap-8 items-stretch">
        <div 
          v-for="(card, index) in empresarialCards" 
          :key="index" 
          class="bg-white rounded-[24px] shadow-2xl border border-white/20 p-8 flex flex-col justify-between transition-all duration-300 hover:scale-[1.02]"
        >
          <div>
            <h3 class="text-xl md:text-2xl font-bold text-center text-gray-900 mb-1">{{ card.title }}</h3>
            <p class="text-center text-gray-400 text-xs font-semibold mb-4 tracking-wide uppercase">{{ card.scope }}</p>
            
            <div class="text-center mb-2">
              <span class="text-2xl md:text-3xl font-black text-gray-900">{{ card.price }}</span>
            </div>
            <p class="text-center text-gray-500 text-xs italic mb-6">depende del número de empleados</p>
            
            <ul class="space-y-3.5 mb-8">
              <li v-for="(benefit, bIndex) in card.benefits" :key="bIndex" class="flex items-start gap-3 text-[13px] text-gray-700 leading-tight">
                <span class="text-[#58B69B] font-bold text-sm">✓</span>
                <span>{{ benefit }}</span>
              </li>
            </ul>
          </div>

          <button class="w-full py-3.5 rounded-xl bg-[#335EA9] text-white font-bold text-sm shadow-md hover:bg-[#284c8a] transition-all mt-auto">
            Contratar ahora
          </button>
        </div>
      </div>

    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue';

const isEmpresarial = ref(false);
const activePlan = ref('plata');

const benefitsDigital = [
  "Orientación médica inmediata vía chat 24/7 con urgenciólogos (Ilimitado).",
  "Evaluación médica ágil para priorizar las necesidades de cada caso.",
  "Recomendaciones y seguimiento vía digital para revaloración.",
  "Recomendaciones y nota médica.",
  "Expediente digital.",
  "2 Consultas médicas por Telemedicina con receta digital, vía videollamada al año."
];

const plans = {
  oro: {
    name: 'Oro', monthly: '300', yearly: '3,000', colorClass: 'bg-[#ECC421]',
    benefits: [
      { text: "Orientación médica inmediata vía chat 24/7 (Ilimitado).", highlight: false },
      { text: "4 Consultas por Urgenciólogo presenciales al año.", highlight: true },
      { text: "Derivación con Especialistas y Laboratorios (20% dto).", highlight: true },
      { text: "1 Consulta presencial con Pediatra al año.", highlight: true },
      { text: "1 Servicio de Ambulancia incluido al año.", highlight: true }
    ]
  },
  plata: {
    name: 'Plata', monthly: '210', yearly: '2,100', colorClass: 'bg-[#B6B6B6]',
    benefits: [
      { text: "Orientación médica inmediata vía chat 24/7 (Ilimitado).", highlight: false },
      { text: "Evaluación médica ágil y seguimiento digital.", highlight: false },
      { text: "4 Consultas por médico general presenciales al año.", highlight: true },
      { text: "Derivación con Especialistas y Laboratorios (15% dto).", highlight: true }
    ]
  },
  bronce: {
    name: 'Bronce', monthly: '159', yearly: '1,590', colorClass: 'bg-[#D38E47]',
    desc: "Ideal para familias que quieren atención digital con apoyos locales",
    benefits: [
      { text: "Orientación médica inmediata vía chat 24/7 (Ilimitado).", highlight: false },
      { text: "2 Consultas médicas por Telemedicina al año.", highlight: false },
      { text: "2 Consultas por médico general presenciales al año.", highlight: true },
      { text: "Derivación con Especialistas y Laboratorios (10% dto).", highlight: true }
    ]
  }
};

const empresarialCards = [
  {
    title: "Urgeny Digital Empresarial",
    scope: "Nacional",
    price: "Desde $59 a $99",
    benefits: [
      "Orientación médica inmediata vía chat 24/7 con urgenciólogos (Ilimitado).",
      "Evaluación médica ágil para priorizar las necesidades de cada caso.",
      "Recomendaciones y seguimiento vía digital para revaloración.",
      "Expediente digital.",
      "Reporte mensual consolidado por empresa.",
      "2 Consultas médicas por Telemedicina con receta digital, vía videollamada al año."
    ]
  },
  {
    title: "Urgeny TeleCare Empresarial",
    scope: "Nacional Avanzado",
    price: "$99 a $139",
    benefits: [
      "Orientación médica inmediata vía chat 24/7 con urgenciólogos (Ilimitado).",
      "Evaluación médica ágil para priorizar las necesidades de cada caso.",
      "Recomendaciones y seguimiento vía digital para revaloración.",
      "Expediente digital.",
      "Reporte mensual consolidado por empresa.",
      "4 Consultas médicas por Telemedicina con receta digital, vía videollamada al año."
    ]
  },
  {
    title: "Urgeny Plus Regional",
    scope: "Colima",
    price: "$139 a $179",
    benefits: [
      "Orientación médica inmediata vía chat 24/7 con urgenciólogos (Ilimitado).",
      "Evaluación médica ágil para priorizar las necesidades de cada caso.",
      "Recomendaciones y seguimiento vía digital para revaloración.",
      "Expediente digital.",
      "Reporte mensual consolidado por empresa.",
      "2 Consultas médicas por Telemedicina con receta digital, vía videollamada al año.",
      "2 Consultas por médico general presenciales al año.",
      "Derivación con Especialistas, Laboratorios y Unidades de Imagen con el 10% de descuento."
    ]
  },
  {
    title: "Urgeny Total Care Regional",
    scope: "Sólo Colima, Premium",
    price: "$179 a $219",
    benefits: [
      "Orientación médica inmediata vía chat 24/7 con urgenciólogos (Ilimitado).",
      "Evaluación médica ágil para priorizar las necesidades de cada caso.",
      "Recomendaciones y seguimiento vía digital para revaloración.",
      "Expediente digital.",
      "Reporte mensual consolidado por empresa.",
      "2 Consultas médicas por Telemedicina con receta digital, vía videollamada al año.",
      "2 Consultas por médico general presenciales al año.",
      "Derivación con Especialistas, Laboratorios y Unidades de Imagen con el 15% de descuento.",
      "1 Consulta presencial con Pediatra al año."
    ]
  }
];
</script>

<style scoped>
.blur-background { filter: blur(8px); }
.drop-shadow-lg { filter: drop-shadow(0 4px 3px rgba(0, 0, 0, 0.4)); }
</style>