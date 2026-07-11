from django.shortcuts import render

from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Enquiry
from .serializers import EnquirySerializer

@api_view(['POST'])
def submit_enquiry(request):
    "Public endpoint to submit a contact form"
    serializer = EnquirySerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response({
            'success': True,
            'message': 'Enquiry received. We\'ll get back to you soon.'
        }, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def list_enquiries(request):
    "Admin endpoint to list all enquiries (protected later)."
    enquiries = Enquiry.objects.all().order_by('-created_at')
    serializer = EnquirySerializer(enquiries, many=True)
    return Response(serializer.data)

@api_view(['PATCH'])
def mark_enquiry_read(request, pk):
    "Admin endpoint to mark an enquiry as read."
    try:
        enquiry = Enquiry.objects.get(pk=pk)
    except Enquiry.DoesNotExist:
        return Response(
            { 'error': 'Enquiry not found' },
            status=status.HTTP_404_NOT_FOUND
        )
    enquiry.is_read = True
    enquiry.save()
    return Response({
        'success': True,
        'message': 'Marked as read.'
    })

api_view(['DELETE'])
def delete_enquiry(request, pk):
    "Admin endpoint to delete an enquiry"
    try:
        enquiry = Enquiry.objects.get(pk=pk)
    except Enquiry.DoesNotExist:
        return Response(
            { 'error': 'Enquiry not found!'},
            status=status.HTTP_404_NOT_FOUND
        )
    enquiry.delete()
    return Response(
        {
            'success': True, 
            'message': 'Deleted.',
         }
    )
