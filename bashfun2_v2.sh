#Exercice V3
#Reprenez uniquement la version 1 de l'exercice. 
#La note devra être donnée en paramètre ou bien saisie en cas d'absences d'arguments. 
#La comparaison de la note devra être faite dans une fonction appreciation().

#!/bin/bash

function note {
    if [ $# -eq 0 ] # La variable spéciale "$#" = renvoie le nombre d'arguments passés à un script ou une fonction en ligne de commande.
    then
        read -p "Entrez une note : " note
    else
        note=$1 # Assigne la valeur de l'argument passé en paramètre à la variable "note".
    fi
}

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

note $1
appreciation