<template>
  <div class="space-y-6">
    
    <!-- Header -->
    <div class="flex flex-col md:flex-row md:items-center md:justify-between">
      <div>
        <h1 class="text-2xl font-bold text-gray-800">Messages</h1>
        <p class="text-sm text-gray-500">Manage all incoming enquiries</p>
      </div>
      <div class="mt-2 md:mt-0">
        <button 
          @click="fetchEnquiries" 
          class="px-4 py-2 bg-tm-red text-white rounded-lg hover:bg-red-700 transition text-sm font-medium flex items-center gap-2"
        >
          <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15" />
          </svg>
          Refresh
        </button>
      </div>
    </div>

    <!-- Stats -->
    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
      <div class="bg-white p-4 rounded-xl shadow-sm border border-gray-200">
        <div class="flex items-center justify-between">
          <span class="text-sm text-gray-500">Total</span>
          <span class="text-2xl font-bold text-gray-800">{{ enquiries.length }}</span>
        </div>
      </div>
      <div class="bg-white p-4 rounded-xl shadow-sm border border-gray-200">
        <div class="flex items-center justify-between">
          <span class="text-sm text-gray-500">Unread</span>
          <span class="text-2xl font-bold text-yellow-600">{{ unreadCount }}</span>
        </div>
      </div>
      <div class="bg-white p-4 rounded-xl shadow-sm border border-gray-200">
        <div class="flex items-center justify-between">
          <span class="text-sm text-gray-500">Read</span>
          <span class="text-2xl font-bold text-green-600">{{ enquiries.length - unreadCount }}</span>
        </div>
      </div>
    </div>

    <!-- Search / Filter -->
    <div class="flex flex-col sm:flex-row gap-3">
      <div class="relative flex-1">
        <input 
          v-model="searchQuery" 
          type="text" 
          placeholder="Search by name, email or message..." 
          class="w-full pl-10 pr-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-tm-red focus:border-transparent"
        />
        <svg class="absolute left-3 top-2.5 w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
        </svg>
      </div>
      <select v-model="filterStatus" class="px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-tm-red">
        <option value="all">All</option>
        <option value="unread">Unread</option>
        <option value="read">Read</option>
      </select>
    </div>

    <!-- Table -->
    <div class="bg-white rounded-xl shadow-sm border border-gray-200 overflow-hidden">
      <div class="overflow-x-auto">
        <table class="min-w-full divide-y divide-gray-200">
          <thead class="bg-gray-50">
            <tr>
              <!-- Name (sortable) -->
              <th 
                scope="col" 
                class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer hover:text-tm-red transition group"
                @click="sortBy('name')"
              >
                <div class="flex items-center gap-1">
                  Name
                  <span class="text-gray-400 group-hover:text-tm-red">
                    {{ sortKey === 'name' ? (sortOrder === 'asc' ? '▲' : '▼') : '↕' }}
                  </span>
                </div>
              </th>

              <!-- Service (sortable) -->
              <th 
                scope="col" 
                class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer hover:text-tm-red transition group"
                @click="sortBy('service_interest')"
              >
                <div class="flex items-center gap-1">
                  Service
                  <span class="text-gray-400 group-hover:text-tm-red">
                    {{ sortKey === 'service_interest' ? (sortOrder === 'asc' ? '▲' : '▼') : '↕' }}
                  </span>
                </div>
              </th>

              <!-- Date (sortable) -->
              <th 
                scope="col" 
                class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer hover:text-tm-red transition group"
                @click="sortBy('created_at')"
              >
                <div class="flex items-center gap-1">
                  Date
                  <span class="text-gray-400 group-hover:text-tm-red">
                    {{ sortKey === 'created_at' ? (sortOrder === 'asc' ? '▲' : '▼') : '↕' }}
                  </span>
                </div>
              </th>

              <!-- Status (sortable) -->
              <th 
                scope="col" 
                class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer hover:text-tm-red transition group"
                @click="sortBy('is_read')"
              >
                <div class="flex items-center gap-1">
                  Status
                  <span class="text-gray-400 group-hover:text-tm-red">
                    {{ sortKey === 'is_read' ? (sortOrder === 'asc' ? '▲' : '▼') : '↕' }}
                  </span>
                </div>
              </th>

              <!-- Actions (not sortable) -->
              <th scope="col" class="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
                Actions
              </th>
            </tr>
          </thead>
          <tbody class="bg-white divide-y divide-gray-200">
            <tr v-if="loading">
              <td colspan="5" class="px-6 py-4 text-center text-gray-500">Loading...</td>
            </tr>
            <tr v-else-if="filteredEnquiries.length === 0">
              <td colspan="5" class="px-6 py-4 text-center text-gray-500">No enquiries found.</td>
            </tr>
            <tr v-for="enq in paginatedEnquiries" :key="enq.id" class="hover:bg-gray-50 transition">
              <td class="px-6 py-4 whitespace-nowrap">
                <div class="flex items-center">
                  <div class="flex-shrink-0 h-10 w-10 rounded-full bg-gray-200 flex items-center justify-center text-gray-700 font-semibold">
                    {{ enq.name.charAt(0).toUpperCase() }}
                  </div>
                  <div class="ml-4">
                    <div class="text-sm font-medium text-gray-900">{{ enq.name }}</div>
                    <div class="text-sm text-gray-500">{{ enq.email }}</div>
                  </div>
                </div>
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-700">
                {{ enq.service_interest || 'N/A' }}
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                {{ formatDate(enq.created_at) }}
              </td>
              <td class="px-6 py-4 whitespace-nowrap">
                <span 
                  class="px-2 py-1 text-xs font-semibold rounded-full"
                  :class="enq.is_read ? 'bg-green-100 text-green-800' : 'bg-yellow-100 text-yellow-800'"
                >
                  {{ enq.is_read ? 'Read' : 'Unread' }}
                </span>
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <button @click="viewEnquiry(enq)" class="text-tm-red hover:text-red-700 mr-3 transition">
                  View
                </button>
                <button 
                  v-if="!enq.is_read" 
                  @click="markAsRead(enq.id)" 
                  class="text-blue-600 hover:text-blue-800 mr-3 transition"
                >
                  Mark Read
                </button>
                <button @click="deleteEnquiry(enq.id)" class="text-red-500 hover:text-red-700 transition">
                  Delete
                </button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <!-- Pagination -->
    <div v-if="filteredEnquiries.length > 0" class="flex items-center justify-between flex-wrap gap-2">
      <span class="text-sm text-gray-500">
        Showing {{ (currentPage - 1) * itemsPerPage + 1 }} – 
        {{ Math.min(currentPage * itemsPerPage, filteredEnquiries.length) }} 
        of {{ filteredEnquiries.length }} entries
      </span>

      <div class="flex items-center gap-1">
        <button 
          @click="changePage(currentPage - 1)" 
          :disabled="currentPage === 1"
          class="px-3 py-1 rounded-lg border border-gray-300 text-sm hover:bg-gray-50 disabled:opacity-50 disabled:cursor-not-allowed transition"
        >
          Previous
        </button>
        <button 
          v-for="page in totalPages" 
          :key="page"
          @click="changePage(page)"
          class="px-3 py-1 rounded-lg text-sm transition"
          :class="page === currentPage ? 'bg-tm-red text-white' : 'hover:bg-gray-100'"
        >
          {{ page }}
        </button>
        <button 
          @click="changePage(currentPage + 1)" 
          :disabled="currentPage === totalPages"
          class="px-3 py-1 rounded-lg border border-gray-300 text-sm hover:bg-gray-50 disabled:opacity-50 disabled:cursor-not-allowed transition"
        >
          Next
        </button>
      </div>
    </div>

    <!-- View Message Modal -->
    <div v-if="selectedEnquiry" class="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4" @click.self="selectedEnquiry = null">
      <div class="bg-white rounded-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto p-6 shadow-2xl">
        <div class="flex justify-between items-start mb-4">
          <div>
            <h3 class="text-xl font-bold text-gray-800">{{ selectedEnquiry.name }}</h3>
            <p class="text-sm text-gray-500">{{ selectedEnquiry.email }} • {{ selectedEnquiry.phone || 'No phone' }}</p>
          </div>
          <button @click="selectedEnquiry = null" class="text-gray-400 hover:text-gray-600">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
        <div class="mb-4">
          <span class="text-xs font-medium text-gray-500">Service Interest:</span>
          <span class="ml-2 text-sm text-gray-700">{{ selectedEnquiry.service_interest || 'Not specified' }}</span>
        </div>
        <div class="bg-gray-50 p-4 rounded-lg">
          <p class="text-sm text-gray-700 whitespace-pre-wrap">{{ selectedEnquiry.message }}</p>
        </div>
        <div class="mt-4 text-xs text-gray-400">
          Received: {{ formatDate(selectedEnquiry.created_at) }}
        </div>
        <div class="mt-6 flex justify-end gap-3">
          <button @click="selectedEnquiry = null" class="px-4 py-2 border border-gray-300 rounded-lg text-sm hover:bg-gray-50 transition">Close</button>
          <button 
            v-if="!selectedEnquiry.is_read" 
            @click="markAsRead(selectedEnquiry.id)" 
            class="px-4 py-2 bg-tm-red text-white rounded-lg text-sm hover:bg-red-700 transition"
          >
            Mark as Read
          </button>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
import apiClient from '@/api/client'

export default {
  name: 'Messages',

  data() {
    return {
      enquiries: [],
      loading: false,
      selectedEnquiry: null,
      searchQuery: '',
      filterStatus: 'all',
      currentPage: 1,
      itemsPerPage: 5,
      sortKey: 'created_at',        // default sort by date (newest first)
      sortOrder: 'desc'             // 'asc' or 'desc'
    }
  },

  computed: {
    unreadCount() {
      return this.enquiries.filter(e => !e.is_read).length
    },

    // 1. Filter the list
    filteredEnquiries() {
      let filtered = [...this.enquiries]

      // Filter by status
      if (this.filterStatus === 'unread') {
        filtered = filtered.filter(e => !e.is_read)
      } else if (this.filterStatus === 'read') {
        filtered = filtered.filter(e => e.is_read)
      }

      // Filter by search query
      if (this.searchQuery.trim()) {
        const q = this.searchQuery.toLowerCase().trim()
        filtered = filtered.filter(e => 
          e.name.toLowerCase().includes(q) ||
          e.email.toLowerCase().includes(q) ||
          (e.message && e.message.toLowerCase().includes(q))
        )
      }

      return filtered
    },

    // 2. Sort the filtered list
    sortedEnquiries() {
      const sorted = [...this.filteredEnquiries]

      if (!this.sortKey) return sorted

      sorted.sort((a, b) => {
        let valA = a[this.sortKey]
        let valB = b[this.sortKey]

        // Handle null/undefined
        if (valA == null) valA = ''
        if (valB == null) valB = ''

        // Special handling for dates
        if (this.sortKey === 'created_at') {
          valA = new Date(valA).getTime()
          valB = new Date(valB).getTime()
        }

        // Handle boolean (is_read)
        if (this.sortKey === 'is_read') {
          valA = valA ? 1 : 0
          valB = valB ? 1 : 0
        }

        // Compare
        if (valA < valB) return this.sortOrder === 'asc' ? -1 : 1
        if (valA > valB) return this.sortOrder === 'asc' ? 1 : -1
        return 0
      })

      return sorted
    },

    totalPages() {
      return Math.ceil(this.filteredEnquiries.length / this.itemsPerPage)
    },

    // 3. Paginate the sorted list
    paginatedEnquiries() {
      const start = (this.currentPage - 1) * this.itemsPerPage
      const end = start + this.itemsPerPage
      return this.sortedEnquiries.slice(start, end)
    }
  },

  watch: {
    // Reset page when filters change
    searchQuery() {
      this.currentPage = 1
    },
    filterStatus() {
      this.currentPage = 1
    },
    // Also reset page when sorting changes
    sortKey() {
      this.currentPage = 1
    },
    sortOrder() {
      this.currentPage = 1
    }
  },

  mounted() {
    this.fetchEnquiries()
  },

  methods: {
    async fetchEnquiries() {
      this.loading = true
      try {
        const response = await apiClient.get('/api/admin/enquiries/')
        this.enquiries = response.data
        this.currentPage = 1
      } catch (error) {
        console.error('Failed to fetch enquiries:', error)
      } finally {
        this.loading = false
      }
    },

    sortBy(field) {
      // If same field, toggle order; else set new field with default asc
      if (this.sortKey === field) {
        this.sortOrder = this.sortOrder === 'asc' ? 'desc' : 'asc'
      } else {
        this.sortKey = field
        this.sortOrder = 'asc'
      }
    },

    changePage(page) {
      if (page < 1 || page > this.totalPages) return
      this.currentPage = page
    },

    async markAsRead(id) {
      try {
        await apiClient.patch(`/api/admin/enquiries/${id}/read/`)
        const enq = this.enquiries.find(e => e.id === id)
        if (enq) enq.is_read = true
        if (this.selectedEnquiry && this.selectedEnquiry.id === id) {
          this.selectedEnquiry.is_read = true
        }
      } catch (error) {
        console.error('Failed to mark as read:', error)
      }
    },

    async deleteEnquiry(id) {
      if (!confirm('Are you sure you want to delete this enquiry?')) return
      try {
        await apiClient.delete(`/api/admin/enquiries/${id}/delete/`)
        this.enquiries = this.enquiries.filter(e => e.id !== id)
        if (this.selectedEnquiry && this.selectedEnquiry.id === id) {
          this.selectedEnquiry = null
        }
      } catch (error) {
        console.error('Failed to delete enquiry:', error)
      }
    },

    viewEnquiry(enq) {
      this.selectedEnquiry = { ...enq }
    },

    formatDate(dateString) {
      const date = new Date(dateString)
      return date.toLocaleDateString('en-KE', {
        year: 'numeric',
        month: 'short',
        day: 'numeric',
        hour: '2-digit',
        minute: '2-digit'
      })
    }
  }
}
</script>

<style scoped>
/* optional tweaks */
</style>