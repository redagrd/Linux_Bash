#Exercice V2
#Reprenez l'exercice 1; faites en sorte que le programme se répète tant que l'utilisateur n'a pas saisi une note négative (pour quitter)

#!/bin/bash

function aire {
    while true
    do
        read -p "Entrez la longueur : " lgr
        read -p "Entrez la largeur : " lar
        if [ $lgr -ge 0 ] || [ $lar -ge 0 ]
        then
            echo "l'aire du rectangle est de : $(($lgr * $lar))"
        else
            echo "Fin du programme"
            break
        fi
    done
}

aire