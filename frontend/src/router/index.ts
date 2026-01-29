import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import Homepage from '@/pages/homepage.vue'
import AdminLayout from '@/pages/AdminLayout.vue'
import Dashboard from '@/pages/Dashboard.vue'
import Portfolio from '@/pages/Portfolio.vue'
import Contact from '@/pages/Contact.vue'
import AboutPage from '@/pages/AboutPage.vue'
import Blog from '@/pages/Blog.vue'
import FAQPage from '@/pages/FAQPage.vue'
import ServicePage from '@/pages/ServicePage.vue'
import LogoDesign from '@/pages/LogoDesign.vue'
import ServiceLayout from '@/pages/ServiceLayout.vue'
import BrandIdentityPAge from '@/pages/BrandIdentityPAge.vue'
import SocialMediaDesignPage from '@/pages/SocialMediaDesignPage.vue'
import FlyerPosterPage from '@/pages/FlyerPosterPage.vue'
import PrintMarketingPage from '@/pages/PrintMarketingPage.vue'
import MockupsPresentationPage from '@/pages/MockupsPresentationPage.vue'
import WebDesignPage from '@/pages/WebDesignPage.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', name: 'homepage', component: Homepage },
    { path: '/admin-dashboard', name: 'admin-dashboard', component: AdminLayout },
    { path: '/portfolio', name: 'portfolio', component: Portfolio },
    { path: '/contact-us', name: 'contact-us', component: Contact },
    { path: '/about', name: 'about', component: AboutPage },
    { path: '/blog', name: 'blog', component: Blog },
    { path: '/faqs', name: 'faqs', component: FAQPage },
    { path: '/services', component: ServiceLayout, children: [
      {
        path: '',
        name: 'services',
        component: ServicePage
      },
      {
        path: 'logo-design',
        name: 'services-logo-design',
        component: LogoDesign
      },
      {
        path: 'brand-identity',
        name: 'services-brand-identity',
        component: BrandIdentityPAge
      },
      {
        path: 'social-media-design',
        name: 'services-social-media-design',
        component: SocialMediaDesignPage
      },
      {
        path: 'flyer-posters',
        name: 'services-flyer-posters',
        component: FlyerPosterPage
      },
      {
        path: 'print-marketing',
        name: 'services-print-marketing',
        component: PrintMarketingPage
      },
      {
        path: 'mockups-presentation',
        name: 'services-mockups-presentation',
        component: MockupsPresentationPage
      },
      {
        path: 'web-design',
        name: 'services-web-design',
        component: WebDesignPage
      }
    ] },
  ],
})

export default router
