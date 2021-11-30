from django.views import generic
from django.shortcuts import render ,redirect
from django.views.generic import View
from django.views.generic.base import TemplateView
from product.models import ProductVariant,ProductProduct,ProductProductvariantprice,ProductVariant
from django.core.paginator import Paginator,PageNotAnInteger , EmptyPage
from django.db.models import Q
def createview(request):
    context = {
        'variant':ProductVariant.objects.all()
    }
    return render(request,'products/create.html')

class ListProductView(TemplateView):
    template_name = 'products/list.html'
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        title = self.request.GET.get('title')
        variant = self.request.GET.get('variant')
        price_from = self.request.GET.get('price_from')
        price_to = self.request.GET.get('price_to')
        if self.request.GET:
            product = ProductProduct.objects.filter(
            title__icontains = title,
            productproductvariant__variant_title__icontains = variant,
            productproductvariantprice__price__range =[price_from,price_to  ]
            
            ).distinct()
            paginator = Paginator(product, 10000)
            print(product)
        else:
            product = ProductProduct.objects.all()
            
        
            paginator = Paginator(product, 2)
        page = self.request.GET.get('page')
        
      
        
        
        
        
        try:
            product = paginator.get_page(page)
        
        except PageNotAnInteger:
            product = paginator.get_page(1)
             
        
        except EmptyPage:
            product = paginator.get_page(paginator.num_pages) 
            
        # index = product.number - 1
        # max_index = len(paginator.page_range)
        # start_index = index -4 if index>= 4 else 0
        # end_index = index +4 if index <= max_index -5 else max_index
        # page_range = paginator.page_range[start_index:end_index]
        lastp = list(product.object_list)[-1]
        firstp = list(product.object_list)[0]
        firstind = firstp.id
        lastind = lastp.id
        context["page"] = product
        context["count"]=paginator.count
        context["first"] = firstind
        context["last"] = lastind
        context["variant"] =ProductVariant.objects.all()
        # context["page_range"] = page_range
      
        return context
    
