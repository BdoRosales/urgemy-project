<template>
  <div>
    <nav class="fixed top-0 left-0 w-full flex justify-between items-center bg-[#335EA9] px-6 py-6 text-white z-50 shadow-md">
      <div class="flex-none">
        <img 
          src="https://urgemy.com/_assets/v11/f88b8a7ebbce1dd28ec73712242055db7e96a06f.svg" 
          alt="logo"
          class="h-6 w-auto object-contain"
          style="height: 25px; width: 25px;" 
        >
      </div>
      <div class="flex items-center gap-8">
        <button class="bg-[#58B69B] px-4 py-2 rounded-lg font-bold text-sm">Descarga la app</button> 
        <ul class="flex flex-row items-center gap-5 list-none m-0 p-0">
          <li><a href="#" class="text-[14px] hover:text-gray-300">Inicio</a></li>
          <li><a href="#" class="text-[14px] hover:text-gray-300">Membresias</a></li>
          <li><a href="#" class ="text-[14px] font-bold hover:text-gray-300">¿Por qué un urgenciólogo?</a></li>
          <li><a href="#" class="text-[14px] font-bold hover:text-gray-300">Empresas</a></li>
        </ul>
      </div>
    </nav>
<section class="relative bg-[#A3C5D9] min-h-[700px] flex flex-col items-center justify-center text-center p-10">
  
  <div class="absolute inset-0 z-0">
    <img 
      src="https://urgemy.com/_assets/v11/75392272d624f38d562aaa4f5cf4a3ef880c4d5b.png?w=2048" 
      class="w-full h-full object-cover brightness-[0.6]"
      alt="background-hands"
    >
  </div>

  <div class="relative z-10 flex flex-col items-center">
    <img 
      src="https://urgemy.com/_assets/v11/f88b8a7ebbce1dd28ec73712242055db7e96a06f.svg" 
      alt="urgemy-logo-large"
      style="height: 200px; width: 200px; object-fit: contain;"
    >
    <h1 class="text-white text-6xl font-black tracking-tighter mb-2">
      urgemy
    </h1>
  
    <h2 class="text-[#ffffff] text-3xl font-extrabold">
      Mi salud es <span class="italic">urgente.</span>
    </h2>
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
          class="w-full h-auto drop-shadow-2xl"
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

<section class="flex justify-center">
  <img 
    src="https://urgemy.com/_assets/v11/f439854971cb4be00ebcf951910d74e7dc22c3a9.png?w=2048" 
    alt="Doctor"
    class="w-full max-h-200"
  >
</section>

<section class="py-20 bg-gradient-to-tr from-[#3de3a7] via-[#3b82f6] to-[#162a61] text-white overflow-hidden">
  <div class="container mx-auto px-6">
    <div class="flex flex-col md:flex-row items-start md:items-center justify-between gap-12">
      
      <div class="md:w-1/3">
        <h2 class="text-5xl font-bold leading-tight">¿Qué ofrecemos?</h2>
      </div>

      <ul class="md:w-2/3 space-y-6">
        <li class="flex items-start gap-4">
          <span class="text-[#a7f3d0] font-bold text-3xl">✓</span>
          <p class="text-3xl font-medium text-white/90">Urgenciólogos 24/7 (no médicos generales)</p>      
        </li>

        <li class="flex items-start gap-4">
          <span class="text-[#a7f3d0] font-bold text-3xl">✓</span>
          <p class="text-3xl font-medium text-white/90">Respuesta inmediata por chat o llamada</p>
        </li>

        <li class="flex items-start gap-4">
          <span class="text-[#a7f3d0] font-bold text-3xl">✓</span>
          <p class="text-3xl font-medium text-white/90">Videollamadas con receta digital</p> 
        </li>

        <li class="flex items-start gap-4">
          <span class="text-[#a7f3d0] font-bold text-3xl">✓</span>
          <p class="text-3xl font-medium text-white/90">Derivación con especialistas y laboratorios aliados</p>   
        </li>

        <li class="flex items-start gap-4">
          <span class="text-[#a7f3d0] font-bold text-3xl">✓</span>
          <p class="text-3xl font-medium text-white/90">Descuentos locales (solo Colima)</p>
        </li> 

        <li class="flex items-start gap-4">
          <span class="text-[#a7f3d0] font-bold text-3xl">✓</span>
          <p class="text-3xl font-medium text-white/90">Cobertura familiar (incluye a 4 personas)</p>
        </li>

        <li class="flex items-start gap-4">
          <span class="text-[#a7f3d0] font-bold text-3xl">✓</span>
          <p class="text-3xl font-medium text-white/90">Atención empática e inmediata</p>
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
            <li class="flex items-center gap-3 text-gray-700">
              <span class="text-blue-600 font-bold">✓</span> Acceso a urgenciólogos
            </li>
            <li class="flex items-center gap-3 text-gray-700">
              <span class="text-blue-600 font-bold">✓</span> Descuentos con especialistas
            </li>
            <li class="flex items-center gap-3 text-gray-700">
              <span class="text-blue-600 font-bold">✓</span> Videollamadas
            </li>
            <li class="flex items-center gap-3 text-gray-700">
              <span class="text-blue-600 font-bold">✓</span> Consultas presenciales
            </li>
            <li class="flex items-center gap-3 text-gray-700">
              <span class="text-blue-600 font-bold">✓</span> Ambulancia (según nivel)
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

  </div>
</template>