<script setup lang="ts">
import { ref, onMounted } from 'vue'

/**
 * =========================
 * GENERAL SETTINGS
 * =========================
 */
const siteName = ref('GrafixLab CMS')
const siteEmail = ref('admin@grafixlab.com')
const sitePhone = ref('+254 700 000 000')
const siteDescription = ref('Creative design & digital solutions platform')

/**
 * =========================
 * BRAND SETTINGS
 * =========================
 */
const primaryColor = ref('#ed1c24') // tm-red default
const darkModeDefault = ref(true)
const roundedButtons = ref(true)
const fontFamily = ref('Poppins')

/**
 * =========================
 * UI SETTINGS
 * =========================
 */
const autoSave = ref(true)
const showImagePreview = ref(true)
const enableAnimations = ref(true)
const itemsPerPage = ref(10)

/**
 * =========================
 * SECURITY SETTINGS
 * =========================
 */
const adminEmail = ref('admin@grafixlab.com')

/**
 * =========================
 * THEME SYNC (TAILWIND DARK MODE)
 * =========================
 */
const isDark = ref(false)

onMounted(() => {
  isDark.value = document.documentElement.classList.contains('dark')
})

const toggleDarkMode = () => {
  isDark.value = !isDark.value
  document.documentElement.classList.toggle('dark', isDark.value)
  localStorage.setItem('theme', isDark.value ? 'dark' : 'light')
}

/**
 * =========================
 * SAVE (SIMULATED)
 * =========================
 */
const saveSettings = () => {
  const settings = {
    siteName: siteName.value,
    siteEmail: siteEmail.value,
    sitePhone: sitePhone.value,
    primaryColor: primaryColor.value,
    darkModeDefault: darkModeDefault.value,
    roundedButtons: roundedButtons.value,
    fontFamily: fontFamily.value,
    autoSave: autoSave.value,
    showImagePreview: showImagePreview.value,
    enableAnimations: enableAnimations.value,
    itemsPerPage: itemsPerPage.value,
    adminEmail: adminEmail.value
  }

  console.log('Saved Settings:', settings)

  alert('Settings saved successfully!')
}
</script>

<template>
  <div class="space-y-8">

    <!-- HEADER -->
    <div>
      <h1 class="text-2xl font-bold text-tm-black dark:text-white">
        Settings
      </h1>
      <p class="text-sm text-gray-500">
        Manage system configuration and branding
      </p>
    </div>

    <!-- GRID WRAPPER -->
    <div class="grid lg:grid-cols-2 gap-6">

      <!-- ================= GENERAL ================= -->
      <div class="card">
        <h2 class="section-title">General Settings</h2>

        <input v-model="siteName" class="input" placeholder="Site Name" />
        <input v-model="siteEmail" class="input" placeholder="Email" />
        <input v-model="sitePhone" class="input" placeholder="Phone" />
        <textarea v-model="siteDescription" class="input" placeholder="Description"></textarea>
      </div>

      <!-- ================= BRAND ================= -->
      <div class="card">
        <h2 class="section-title">Brand Settings</h2>

        <label class="label">Primary Color</label>
        <input v-model="primaryColor" type="color" class="w-full h-10 cursor-pointer" />

        <label class="label mt-3">Font Family</label>
        <select v-model="fontFamily" class="input">
          <option>Poppins</option>
          <option>Montserrat</option>
          <option>Inter</option>
        </select>

        <div class="mt-4 space-y-3">

          <div class="toggle-row">
            <span>Dark Mode Default</span>
            <input type="checkbox" v-model="darkModeDefault" />
          </div>

          <div class="toggle-row">
            <span>Rounded Buttons</span>
            <input type="checkbox" v-model="roundedButtons" />
          </div>

          <button @click="toggleDarkMode" class="btn mt-3">
            Toggle Dark Mode Preview
          </button>

        </div>
      </div>

      <!-- ================= UI SETTINGS ================= -->
      <div class="card">
        <h2 class="section-title">CMS Behavior</h2>

        <div class="toggle-row">
          <span>Auto Save</span>
          <input type="checkbox" v-model="autoSave" />
        </div>

        <div class="toggle-row">
          <span>Show Image Preview</span>
          <input type="checkbox" v-model="showImagePreview" />
        </div>

        <div class="toggle-row">
          <span>Enable Animations</span>
          <input type="checkbox" v-model="enableAnimations" />
        </div>

        <label class="label mt-3">Items per page</label>
        <input v-model="itemsPerPage" type="number" class="input" />
      </div>

      <!-- ================= SECURITY ================= -->
      <div class="card">
        <h2 class="section-title">Security</h2>

        <input v-model="adminEmail" class="input" placeholder="Admin Email" />

        <button class="danger-btn mt-3">
          Logout All Devices
        </button>
      </div>

    </div>

    <!-- SAVE BUTTON -->
    <div class="flex justify-end">
      <button @click="saveSettings" class="save-btn">
        Save All Settings
      </button>
    </div>

  </div>
</template>

<style scoped>
.card {
  @apply bg-white dark:bg-tm-dark-surface p-5 rounded-xl shadow space-y-3;
}

.section-title {
  @apply font-semibold text-lg text-tm-black dark:text-white mb-2;
}

.label {
  @apply text-sm text-gray-500;
}

.input {
  @apply w-full p-2 rounded-lg border border-gray-200 dark:border-gray-700 bg-white dark:bg-tm-dark-bg text-tm-black dark:text-white;
}

.toggle-row {
  @apply flex justify-between items-center py-2 text-sm text-tm-black dark:text-white;
}

.btn {
  @apply px-4 py-2 rounded-lg bg-tm-red text-white hover:opacity-90 transition;
}

.save-btn {
  @apply px-6 py-3 bg-tm-red text-white rounded-lg font-semibold hover:opacity-90 transition;
}

.danger-btn {
  @apply px-4 py-2 bg-red-500 text-white rounded-lg hover:bg-red-600 transition;
}
</style>