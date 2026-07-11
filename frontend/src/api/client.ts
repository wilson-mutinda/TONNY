import type { AxiosError, AxiosInstance, AxiosResponse } from "axios"
import axios from "axios"

const API_BASE = import.meta.env.VITE_API_BASE || 'http://localhost:8000'

// Define response structure (optional)
interface ApiResponse<T = any> {
    success?: boolean
    message?: string
    data?: T
}

// Create the axios instance
const apiClient: AxiosInstance = axios.create({
    baseURL: API_BASE,
    headers: {
        'Content-Type': 'application/json',
    }
})

// Request interceptor
apiClient.interceptors.request.use(
    (config) => {
        // Add authorization token if present
        const token = localStorage.getItem('access_token')
        if (token) {
            config.headers.Authorization = `Bearer ${token}`
        }
        return config
    },
    (error: AxiosError) => Promise.reject(error)
)

// Response Interceptor
apiClient.interceptors.response.use(
    (response: AxiosResponse) => response,
    (error: AxiosError) => {
        // Handle 401 Unauthorized globally
        if (error.response && error.response.status === 401) {
            // Optional: clear token and redirect to  login
            localStorage.removeItem('access_token')
        }
        return Promise.reject(error)
    }
)

export default apiClient
