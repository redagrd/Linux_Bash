#faire une calculatrice avec les opérations basiques + - / * , sur 2 variables donné par l'utilisateur. Afficher l’opération et le résultat

# !/bin/bash

read -p "entrez le premier nombre : " nb1
read -p "entrez l'opération : " op
read -p "entrez le deuxième nombre : " nb2


case $op in
    "+")
        echo "$nb1 + $nb2 = $(($nb1 + $nb2))"
        ;;
    "-")
        echo "$nb1 - $nb2 = $(($nb1 - $nb2))"
        ;;
    "*")
        echo "$nb1 * $nb2 = $(($nb1 * $nb2))"
        ;;
    "/")
        echo "$nb1 / $nb2 = $(($nb1 / $nb2))"
        ;;
    *)
        echo "opération non reconnue"
        ;;
esac