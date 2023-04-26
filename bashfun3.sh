#Créer un script qui permet de calculer et d'afficher la factorielle d'un nombre donné en paramètre (ou saisi en cas d'absence de paramètres). 
#La factorielle : En mathématiques, la factorielle d'un entier naturel n est le produit des nombres entiers strictement positifs inférieurs ou égaux à n.
#Soit n un entier naturel. Sa factorielle est formellement définie par :
#n! = 1 * 2 * 3 * ... * (n-1) * n

#Le tableau de droite donne les premières factorielles ; par exemple, on a :
#1! = 1
#2! = 1 * 2 = 2
#3! = 1 * 2 * 3 = 6
#4! = 1 * 2 * 3 * 4 =24
#...
#10! = 1 * 2 * .. * 9 * 10 =  3628800

#!/bin/bash

function nb {
    if [ $# -eq 0 ]
    then
        read -p "Entrez un nombre : " nb
    else
        nb=$1 
    fi
}

function factorielle {
    if [ $nb -eq 0 ]
    then
        echo "1"
    else
        i=1
        res=1
        while [ $i -le $nb ]
        do
            res=$(($res * $i))
            i=$(($i + 1))
        done
        echo "$res"
    fi
}

nb $1
factorielle $nb