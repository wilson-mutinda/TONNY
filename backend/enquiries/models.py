from django.db import models

# Create your models here.
class Enquiry(models.Model):
    SERVICE_INTEREST_CHOICES = [
        ('social-media-posts', 'Social Media Posts'),
        ('travel-flyers', 'Travel Flyers'),
        ('political-posters', 'Political Posters'),
        ('general-flyers', 'General Flyers'),
        ('mockups', 'Mockups'),
        ('logos', 'Logos'),
    ]

    name = models.CharField(max_length=255)
    email = models.EmailField()
    phone = models.CharField(max_length=20, blank=True, null=True)
    service_interest = models.CharField(
        max_length=100, 
        choices=SERVICE_INTEREST_CHOICES, 
        blank=True, 
        null=True
    )
    message = models.TextField()
    is_read = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.name} - {self.email}"