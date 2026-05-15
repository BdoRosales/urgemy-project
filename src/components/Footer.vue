<template>
  <footer class="w-full bg-[#F9F7F1] pt-16 pb-8 px-6 md:px-20 text-[#000000]">
    <div class="max-w-[1200px] mx-auto">
      
      <div class="mb-12">
        <div class="flex items-center gap-2">
          <img src="https://urgemy.com/_assets/v11/eeae47e67d19e825265a2db3a57f6384aad22b7c.png" alt="Urgemy" class="h-10">
        </div>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-10 md:gap-4 mb-20">
        
        <div class="flex flex-col gap-1 text-sm md:text-base">
          <a href="mailto:ventas@urgemy.com" class="hover:underline">ventas@urgemy.com</a>
          <span>(312) 330 4004</span>
        </div>

        <div class="flex flex-col gap-1 text-sm md:text-base">
          <p>Avenida 20 de Noviembre #480</p>
          <p>Los Viveros</p>
          <p>Colima, Colima</p>
        </div>

        <div class="flex flex-col gap-1 text-sm md:text-base">
          <a href="#" class="hover:underline">Instagram</a>
          <a href="#" class="hover:underline">Facebook</a>
          <a href="#" class="hover:underline">LinkedIn</a>
          <a href="#" class="hover:underline">Bluesky</a>
          <router-link to="/aviso-de-privacidad" class="hover:underline mt-2 font-medium">
            Aviso de privacidad
          </router-link>
        </div>
      </div>

      <div class="text-xs md:text-sm text-black border-t border-gray-200 pt-8">
        <p class="font-semibold">Urgemy</p>
        <p class="font-semibold">© 2026 Todos los derechos reservados</p>
      </div>
      
    </div> </footer>
</template>