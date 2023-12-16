from django.db import models
from django.contrib.auth.models import User
from django.core.validators import MaxValueValidator


class Shop(models.Model):
    name = models.CharField(max_length=50, verbose_name='Магазин', null=False, blank=False)
    head_office_address = models.CharField(max_length=100, verbose_name='Адрес', null=False, blank=False)
    founded_in = models.DateField(verbose_name='Когда был открыт')

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'Shop'


class FoodCategory(models.Model):
    name = models.CharField(max_length=50, verbose_name='Название категории продукта',
                            null=False, blank=False)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'food_category'


class FoodType(models.Model):
    name = models.CharField(max_length=50, verbose_name='Продукт', help_text='Введите тип еды',
                            null=False, blank=False)
    foodCategory = models.ForeignKey(FoodCategory, on_delete=models.CASCADE, verbose_name='Категория продукта',
                                     null=True, blank=True)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'food_type'


class ProductDescription(models.Model):
    name = models.CharField(max_length=100, verbose_name='Продукт', help_text='Введите название продукта',
                            null=False, blank=False)
    foodType = models.ForeignKey(FoodType, on_delete=models.CASCADE, verbose_name='Тип продукта',
                                 null=True, blank=True)
    weight = models.DecimalField(decimal_places=3, max_digits=9, verbose_name='Вес в килограммах',
                                 null=False, blank=False)
    description = models.TextField(max_length=500, verbose_name='Описание',
                                   null=True, blank=True)
    ingredients = models.TextField(max_length=500, verbose_name='Состав',
                                   null=True, blank=True)
    image = models.ImageField(upload_to='images/products', verbose_name='Картинка', null=True, blank=True)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'product_description'


class InstanceOfProduct(models.Model):
    productDescription = models.ForeignKey(ProductDescription, on_delete=models.CASCADE, verbose_name='Товар',
                                           null=False, blank=False)
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE, verbose_name='Магазин',
                             null=False, blank=False)
    price = models.DecimalField(decimal_places=2, max_digits=8, verbose_name='Цена',
                                null=False, blank=False)

    def __str__(self):
        return self.productDescription.name + ' ' + self.shop.name

    class Meta:
        db_table = 'instance_of_product'


class Comment(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='id пользователя',
                             null=True, blank=True)
    comment = models.TextField(max_length=1000, verbose_name='Комментарий', null=False, blank=False)
    mark = models.PositiveSmallIntegerField(verbose_name='Оценка', null=True, blank=True, validators=[MaxValueValidator(5)])
    datetime = models.DateTimeField(auto_now_add=True, verbose_name='Дата и время', null=False, blank=False)
    product = models.ForeignKey(ProductDescription, on_delete=models.CASCADE, verbose_name='Продукт',
                                null=True, blank=True)

    def __str__(self):
        return str(self.user) + ' ' + str(self.datetime)

    class Meta:
        db_table = 'Comment'
