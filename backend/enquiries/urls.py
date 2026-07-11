from django.urls import path
from . import views

urlpatterns = [
    path('contact/', views.submit_enquiry, name='submit-enquiry'),
    path('admin/enquiries/', views.list_enquiries, name='list-enquiries'),
    path('admin/enquiries/<int:pk>/read/', views.mark_enquiry_read, name='mark-read'),
    path('admin/enquiries/<int:pk>/delete/', views.delete_enquiry, name='delete-enquiry'),
]