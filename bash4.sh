#Réaliser un script qui demande à l'utilisateur de choisir une de ces options :
#r pour démarrer. Lorsque cette option est choisie, informer l'utilisateur que le programme démarre.
#s pour arrêter. Lorsque cette option est choisie, informer l'utilisateur que le programme s'arrête.
#d pour supprimer. Lorsque cette option est choisie, informer l'utilisateur que le programme se supprime.
#h pour afficher l'aide disponible. Lorsque cette option est choisie, informer l'utilisateur que le programme affiche l'aide disponible.

# !/bin/bash

read -p "Choisissez une option : r pour démarrer, s pour arrêter, d pour supprimer, h pour afficher l'aide disponible: " option

case $option in
    r)
        echo "Le programme démarre"
        ;;
    s)
        echo "Le programme s'arrête"
        ;;
    d)
        echo "Le programme se supprime"
        ;;
    h)
        echo "Le programme affiche l'aide disponible"
        ;;
    *)
        echo "Cette option n'existe pas"
        ;;
esac

"""
select option in "r pour démarrer" "s pour arrêter" "d pour supprimer" "h pour afficher l'aide disponible"

do
    case $option in
        "r pour démarrer")
            echo "Le programme démarre"
            ;;
        "s pour arrêter")
            echo "Le programme s'arrête"
            ;;
        "d pour supprimer")
            echo "Le programme est supprimé"
            ;;
        "h pour afficher l'aide disponible")
            echo "Le programme affiche l'aide disponible"
            ;;
        *)
        echo "Erreur"
            ;;
    esac
    break
done
"""