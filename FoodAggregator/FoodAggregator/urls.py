"""
URL configuration for FoodAggregator project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls.static import static
from django.conf import settings

from FoodAggregatorApp import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('foodCategories/', views.food_categories, name="main_menu"),
    path('', views.index, name='login'),
    path('foodCategories/<int:food_category_id>', views.food_types, name='food_types'),
    path('foodCategories/<int:food_category_id>/<int:food_type_id>', views.products, name='products'),
    path('foodCategories/<int:food_category_id>/<int:food_type_id>/<int:product_id>',
         views.single_product_info, name='single_product_info'),
    path('logout/', views.logout_user, name='logout'),
    path('foodCategories/<int:food_category_id>/<int:food_type_id>/<int:product_id>/<int:comment_id>',
         views.delete_comment, name='delete_comment'),

    # ajax url
    path('ajax/validate_username', views.validate_username, name='validate_username'),
    path('ajax/validate_email', views.validate_email, name='validate_email'),
    path('ajax/validate_password', views.validate_password, name='validate_password'),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
