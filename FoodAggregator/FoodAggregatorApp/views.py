from django.contrib.auth import authenticate, login, logout
from django.http import JsonResponse
from django.shortcuts import render, redirect

from FoodAggregatorApp.models import *
from .forms import CommentForm


def logout_user(request):
    if request.user.is_authenticated:
        logout(request)
    return redirect('login')

def index(request):
    if request.method == 'GET':
        return render(request, 'index.html')
    else:
        if request.POST.get('conf_password'):
            nickname = request.POST.get('create_nickname')
            email = request.POST.get('create_email')
            password = request.POST.get('create_password')

            user = User.objects.create_user(email=email, username=nickname, password=password)
            login(request, user)
            return redirect('/foodCategories/')
        else:
            nickname = request.POST.get('nickname')
            password = request.POST.get('password')
            try:
                user = authenticate(username=nickname, password=password)
                login(request, user)
                return redirect('/foodCategories/')
            except:
                return redirect('/')

def food_categories(request):
    categories = FoodCategory.objects.all()

    return render(request, 'foodCategories.html', {'categories': categories})


def food_types(request, food_category_id):
    types = FoodType.objects.filter(foodCategory_id=food_category_id)
    return render(request, 'foodTypes.html', {'category_id': food_category_id, 'food_types': types})


def products(request, food_category_id, food_type_id):
    food_products = ProductDescription.objects.filter(foodType_id=food_type_id)
    food_type = FoodType.objects.get(id=food_type_id)
    food_category = FoodCategory.objects.get(id=food_category_id)
    return render(request, 'productsOfType.html',
                  {'food_category': food_category, 'food_type': food_type, 'products': food_products})


def single_product_info(request, food_category_id, food_type_id, product_id):
    form = CommentForm(request.POST)
    comment = None
    if request.user.is_authenticated and Comment.objects.filter(user_id=request.user.id, product_id=product_id).exists():
        comment = Comment.objects.get(user_id=request.user.id, product_id=product_id)
    if comment:
        com = Comment.objects.get(user_id=request.user.id, product_id=product_id)
        form = CommentForm(initial={'comment': com.comment, 'mark': com.mark})

    if request.method == 'POST':
        if comment:
            form = CommentForm(request.POST, instance=comment)

        if form.is_valid():
            obj = form.save(commit=False)
            obj.product = ProductDescription.objects.get(id=product_id)
            obj.user = request.user
            obj.save()

    product_description = ProductDescription.objects.get(id=product_id)
    instances_of_product = InstanceOfProduct.objects.filter(productDescription_id=product_id)
    comments = Comment.objects.filter(product_id=product_id)
    is_authenticated = request.user.is_authenticated
    is_in_blacklist = request.user.groups.filter(name='Черный_список').exists()
    is_moderator = request.user.groups.filter(name='Модераторы').exists()
    print(is_in_blacklist)

    return render(request, 'singleProductInfo.html', {'is_in_blacklist': is_in_blacklist,
                                                      'is_authenticated': is_authenticated,
                                                      'is_moderator': is_moderator,
                                                      'food_category_id': food_category_id,
                                                      'food_type_id': food_type_id,
                                                      'product_description': product_description,
                                                      'instances_of_product': instances_of_product,
                                                      'form': form, 'comments': comments})


def delete_comment(request, food_category_id, food_type_id, product_id, comment_id):
    Comment.objects.get(id=comment_id).delete()
    return redirect(f"/foodCategories/{food_category_id}/{food_type_id}/{product_id}")


#AJAX view
def validate_username(request):
    username = request.GET.get('create_nickname', None)
    response = {
        'name_is_taken': User.objects.filter(username=username).exists()
    }
    return JsonResponse(response)


def validate_email(request):
    email = request.GET.get('create_email', None)
    response = {
        'email_is_taken': User.objects.filter(email=email).exists()
    }
    return JsonResponse(response)


def validate_password(request):
    tmp_pass = request.GET.get('create_password', None)
    tmp_conf_pass = request.GET.get('conf_password', None)

    if tmp_pass:
        request.session['password'] = tmp_pass
    if tmp_conf_pass:
        request.session['conf_password'] = tmp_conf_pass

    response = {
        'passwords_are_identical': request.session.get('password') == request.session.get('conf_password')
    }
    return JsonResponse(response)
