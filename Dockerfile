# Utiliser une image de base nginx
FROM nginx:latest

# Copier le contenu du répertoire local ./html vers /usr/share/nginx/html dans l'image
COPY ./html /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

# Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
