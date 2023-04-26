#Avec la commande echo, réaliser un script qui affiche :Hello World 
#Vous utilisez souvent Paramètres saisie par l'utilisateur, 2 maximum 
#Le nom du script est #Afficher le nom du script
#PID du shell Affiche le PID du shell
#Code de retour Afiiche le code de retour
#$1 :Premier paramètre
#$2 : Deuxième paramètre
#$0 : Affiche le nom du script
#$? : code de retour de la dernière commande
#$$ : PID du shell

#! /bin/bash

echo "Hello World"
echo "vous utilisez souvent $1, $2" # Quand on appelle son script, indiquer les paramètres qu'on souhaite utiliser
echo "Le nom du script est: $0"
echo "PID du shell: $$"
echo "code de retour: $?"
