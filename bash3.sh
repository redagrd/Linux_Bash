#Exercice 1 :
#Réaliser un script qui demande à l'utilisateur de rentrer un nombre ;
#Si le nombre est égal à 0, Afficher "Vous avez entré zéro."
#Si le nombre est inférieur à 0, Afficher "Vous avez entré un nombre négatif."
#Si le nombre est supérieur à 0, Afficher "Vous avez entré un nombre positif."
#Exercice 2:
#Modifier le script afin que si l'utilisateur renseigne autre chose qu'un nombre, le script lui retourne :"Ceci n'est pas un nombre"

#! bin/bash
read -p "Entrez un nombre : " nb

elif [ $nb -eq 0 ]
then
    echo "Vous avez entré zéro."
elif [ $nb -lt 0 ]
then
    echo "Vous avez entré un nombre négatif."
elif [ $nb -gt 0 ]
then
    echo "Vous avez entré un nombre positif."
else
    echo "Ceci n'est pas un nombre"
fi


#exercice 3:
#Réaliser un script qui :compare l'âge de deux fichiers renseigné par l'utilisateur
#Affiche quel fichier est le plus vieux
#l'utilisateur devra renseigner le chemin des fichiers à comparer à partir de la racine.

read -p "Entrez un le chemin du premier fichier : " file1
read -p "Entrez un le chemin du second fichier : " file2

if [ $file1 -ot $file2 ] # -ot = 2 est plus récent que 1
then
    echo "$file1 est plus vieux que $file2" # -nt = 1 est plus récent que 2
elif [ $file1 -nt $file2 ]
then
    echo "$file1 est plus récent que $file2"
else
    echo "$file1 et $file2 ont la même date de modification"
fi
