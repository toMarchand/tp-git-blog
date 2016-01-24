# tp-git-blog
Un TP git de 4H

L'objectif de ce TP c'est de comprendre git à travers de la manipulation pour être capable de l'utiliser dans le cadre de projet universitaire ou personnels.
Les principaux apprentissages sont les suivants : 
- manipulation de base des commits 
- manipulation de base des branches
- gérer les conflits dans le cadre de travail collaboratif
- utilisation de stash 

Le fonctionnement global est le suivant : 
- un conteneur docker hébergé sur [Deliverous](http://deliverous.com) sert à la fois de serveur centrale git et de serveur de publication.
- à chaque push, un hook régénère l'ensemble des pages html du site avant de les mettre à disposition en http.

Le premier push est fait par l'enseignant pour publier sur le site en question le projet avec le binaire hugo, le sujet et un petit mémo git. Ces 2 derniers documents sont modifiable dans le répertoire "latex".

[Hugo](http://hugo.spf13.com/) est le moteur de blog qui est utilisé.

