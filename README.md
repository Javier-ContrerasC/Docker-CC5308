# Docker-CC5308
 Repositorio de trabajo en docker del ramo Administración de Sistemas Linux

## Archivos
- compose-docker.yml : Contiene todo lo necesario para crear la imagen, se ejecuta con: ```compose-docker up --build```

## Directorios
- nginx : Contiene los .config necesarios (REQUIERE TAMBIEN MODIFICAR ARCHIVOS PARA DNS, no funcional por si solo)

## Web Personalizada
- se utilizó npm create nuxt mini-web para crear el proyecto y se utilizaron algunos componentes base desde otro proyecto para recrear una página web. Además, se añade a docker-compose.yml para que se conecte con nginx y la base de datos y se agrega su respectivo Dockerfile de manera que se copien los archivos a la máquina.

## Integrantes
- Evelyn Ávila G. 
- Javier Contreras C.
- Sebastián González O. 
- Tomás Ubilla Zavala 
- Vicente Facundo Onetto R.
