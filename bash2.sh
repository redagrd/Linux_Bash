#exercice 1:
#Réaliser avec select un script qui propose à l'utilisateur de choisir entre trois formats de dates différentes.
#Ces formats seront : - J/M/A - M/A/J - A/J/

#! bin/bash
select date in "J/M/A" "M/A/J" "A/J/M"
do
    echo "Vous avez choisi $date"
    break
done

#exercice 2:
#Réaliser un script qui :
#Demande à l'utilisateur son login, 5 caractères maximum peuvent être renseignés
#Demande à l'utilisateur son Mot de passe, celui-ci ne doit pas s'afficher à l'écran et l'utilisateur à 10secondes pour le rentrer.
#Affiche à l'écran le login et le mot de passe donné par l'utilisateur.

read -n 5 -p "Entrez votre login: " login # -n = limite le nombre d'entrée, -p permet d'afficher le message avant l'entrée
read -s -t 10 -p "Entrez votre mot de passe: " mdp # -s = cache les entrées, -t limite le temps pour entrer l'input
echo "Votre login est $login et votre mot de passe est $mdp"
