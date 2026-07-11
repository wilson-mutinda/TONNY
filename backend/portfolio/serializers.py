from rest_framework import serializers
from .models import Category, PortfolioItem

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ['id', 'name', 'slug', 'created_at']
        read_only_fields = ['id', 'created_at']

    def validate_name(self, value):
        "Ensure case-insensitive uniqueness of the name."
        qs = Category.objects.filter(name__iexact=value)
        if self.instance:
            qs = qs.exclude(pk=self.instance.pk)
        if qs.exists():
            raise serializers.ValidationError(
                'A category with this name already exists (case-insensitive).'
            )
        return value
    
class PortfolioItemSerializer(serializers.ModelSerializer):
    category = serializers.PrimaryKeyRelatedField(queryset=Category.objects.all())
    category_name = serializers.CharField(source='category.name', read_only=True)

    class Meta:
        model = PortfolioItem
        fields = ['id', 'title', 'category', 'category_name', 'image', 'description', 'order', 'created_at']
        read_only_fields = ['id', 'created_at']