from django.db import models

# Create your models here.
class ProductProduct(models.Model):
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=255)
    sku = models.CharField(max_length=255)
    description = models.TextField()
   
    class Meta:
        managed = False
        db_table = 'product_product'
    def __str__(self):
        return self.title
        


class ProductVariant(models.Model):
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=40)
    description = models.TextField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'product_variant'
        
    def __str__(self):
        return self.title
class ProductProductimage(models.Model):
    id = models.BigAutoField(primary_key=True)
    file_path = models.CharField(max_length=200)
    product = models.ForeignKey(ProductProduct, on_delete=models.CASCADE)
    
    
    class Meta:
        managed = False
        db_table = 'product_productimage'
    def __str__(self):
        return self.product
    
        


class ProductProductvariant(models.Model):
    id = models.BigAutoField(primary_key=True)
    variant = models.ForeignKey(ProductVariant, on_delete=models.CASCADE)
    product = models.ForeignKey(ProductProduct, on_delete=models.CASCADE)
    variant_title = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'product_productvariant'
        
    def __str__(self):
        return self.variant_title
        


class ProductProductvariantprice(models.Model):
    id = models.BigAutoField(primary_key=True)
    price = models.FloatField()
    stock = models.FloatField()
    product = models.ForeignKey(ProductProduct, on_delete=models.CASCADE)
    product_variant_one = models.ForeignKey(ProductProductvariant, on_delete=models.CASCADE, blank=True, null=True,related_name='product_variant_one')
    product_variant_three = models.ForeignKey(ProductProductvariant,on_delete=models.CASCADE, blank=True, null=True,related_name='product_variant_three')
    product_variant_two = models.ForeignKey(ProductProductvariant, on_delete=models.CASCADE, blank=True, null=True,related_name='product_variant_two')

    class Meta:
        managed = False
        db_table = 'product_productvariantprice'
    def __str__(self):
        return str(self.price) + " "+str(self.product) 
        


        