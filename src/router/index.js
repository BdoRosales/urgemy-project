import { createRouter, createWebHashHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import MembresiasView from '../views/MembresiasView.vue' 
import PrivacidadView from '../views/PrivacidadView.vue'

const router = createRouter({
  history: createWebHashHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/membresias',
      name: 'membresias',
      component: MembresiasView,
      meta: { hideFooter: true }
    },
    {
      path: '/aviso-de-privacidad',
      name: 'privacidad',
      component: PrivacidadView
    }
  ],
  scrollBehavior() {
    return { top: 0 }
  }
})

export default router