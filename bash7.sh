#Créer un script qui demande à l'utilisateur s'il valide (Oui/oui) ou refuse (Non/non).
#Si l'utilisateur entre autre chose, le script repose la même question.
#S'il rentre une bonne réponse le script s'arrete.
#indice : vous utiliserez des conditions de type if

# !/bin/bash

while true
do
read -p "Entrez votre réponse : " rep
if [ "$rep1" = "Oui" ] || [ "$rep" = "oui" ]
then 
    echo "Validé"
    break
elif [ "$rep1" = "Non" ] || [ "$rep" = "non" ] 
then
    echo "Invalide"
    break
else 
    echo "Recommencez"
fi
done

#Version 2 :les réponses utilisateurs peuvent aller jusqu'a (Oui/oui/O/o) ou (Non/non/N/n) 
#Vous utiliserez un case

read -p "Entrez votre réponse : Oui/oui/O/o ou Non/non/N/n : " choix

case $choix in
    Oui|oui|O|o)
        echo "Valide"
        ;;
    Non|non|N|n)
        echo "Invalide"
        ;;
    *)
        echo "Erreur"
        ;;
esac