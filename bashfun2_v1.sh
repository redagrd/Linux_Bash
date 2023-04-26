#Exercice - Appréciation de note
#Créer un script qui demande à l'utilisateur de saisir une note et qui affiche un message en fonction de cette note :
#"très bien" si la note est => 16 et <= 20 ;
#"bien" lorsqu'elle est >= 14 est < 16 ;
#"assez bien" si la note est => 12 et < 14 ;
#"moyen" si la note est entre => 10 et < 12 ;
#"insuffisant" si la note est inférieur à < 10;

#!/bin/bash

read -p "Entrez une note : " note

function appreciation {
    if [ $note -ge 16 ] && [ $note -le 20 ]
    then
        echo "Très bien"
    elif [ $note -ge 14 ] && [ $note -lt 16 ]
    then
        echo "Bien"
    elif [ $note -ge 12 ] && [ $note -lt 14 ]
    then
        echo "Assez bien"
    elif [ $note -ge 10 ] && [ $note -lt 12 ]
    then
        echo "Moyen"
    elif [ $note -lt 10 ]
    then
        echo "Insuffisant"
    else
        echo "Note non reconnue"
    fi
}

appreciation