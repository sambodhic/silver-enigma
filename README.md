# silver-enigma

* start Docker daemon  

* vs-code:  
   django-admin startproject core .  
   py manage.py runserver  
   pip freeze > requirements.txt  
   <!-- edit ALLOWED_HOSTS in settings.py  -->
   docker build -t app .  
   docket run -p 8888:80 app  
  
* terminal:  
   az login  
   az acr login --name cuber  
   az acr update -n cuber --admin-enabled true  
   <!-- alternately: az acr login -n cuber --expose-token   -->
   
   docker tag app cuber.azurecr.io/app  
   docker push cuber.azurecr.io/app  

* browser:  
   
