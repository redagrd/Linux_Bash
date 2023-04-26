#Exercice Fonction
#Réaliser un script qui calcule l'aire d'un rectangle en passant par une fonction. La longueur et la largeur devront être renseignées par l'utilisateur.

#!/bin/bash

read -p "Entrez la longueur : " lgr
read -p "Entrez la largeur : " lar

function aire {
    echo "l'aire du rectangle est de : $(($lgr * $lar))"
}

aire


