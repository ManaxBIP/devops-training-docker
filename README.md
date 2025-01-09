# devops-training-docker
TP - Dalyll REGUIA

## 3 - a 
Pour récupérer l'image de nginx sur le docker hub on va faire :
```
docker pull nginx
```

## 3 - b 
Pour verifier les images installé sur docker on va faire :
```
docker images
```

## 3 - d
Pour créer un container qui va rendre notre page html créé auparavant, nous allons utiliser cette commande :  
```
docker run --name devops-training-docker -p 80:80 -v /Users/dalyll/Documents/dev/devops-training-docker/html:/usr/share/nginx/html nginx
```

## 3 - e
Pour supprimer le container, nous allons utiliser cette commande :  
```
docker container rm devops-training-docker
```

## 3 - f
Pour faire la même chose que sur le 3 - d sans l'option -v et en utilisant la commande cp, nous allons utiliser ces commandes :  
```
docker run --name devops-training-docker -p 80:80 nginx
```

## 4 - a
Pour créer l'image avec le Dockerfile, nous allons utiliser cette commande en étant dans le répertoire du projet :  
```
docker build -t custom-nginx-image .
```

## 4 - b
Pour exécuter cette nouvelle image, nous allons utiliser cette commande : 
```
docker run --name custom-nginx-container -p 80:80 custom-nginx-image
```

## 4 - c
Montage de volume :

Avantages :
Pratique pour le développement, car les modifications locales sont immédiatement visibles dans le conteneur.
Pas besoin de reconstruire une image à chaque changement.
Inconvénients :
Moins portable.

COPY dans une image :

Avantages :
Conteneur autonome et portable.
Pas de dépendance au système de fichiers de l'hôte.
Inconvénients :
Reconstruction nécessaire à chaque modification des fichiers.
Moins pratique pour les itérations rapides en développement.
