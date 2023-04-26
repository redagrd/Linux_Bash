# Scripting Bash sous Linux

## Installation de Visual Studio Code

Aller sur le site, télécharger le dossier et lancer la commande d'installation :

```bash

sudo apt install VS.deb

```

## Premier script de création d'arborescence et de fichier texte

```bash

#! bin/bash




# On se déplace dans le dossier

cd /home/fbuchet/Téléchargements/




# On céer notre arborescence -p sert a notifier les liens de parentés

mkdir -p Downloads/{Autre,Image,Music,Video}




cd /home/fbuchet/Téléchargements/Downloads




# Pas besoin de créer le fichier en amont car on utilise le chevron.

echo -e "Ceci est le fichier de Téléchargement.\nMerci de respecter l'organisation du répertoire.\nAttention aux virus.

\nLe dossier téléchargement est prêt." > ReadMe.txt # -e sert a inserer les \n pour le retour chariot




# On cherche dans le dossier ReadMe.txt les mots Téléchargements

grep -i "Téléchargement" ReadMe.txt # -i = Insensible à la casse




#Simple création de fichier

touch /home/fbuchet/Téléchargements/Downloads/Music/music.mp3

```

## Utilisation des paramètres, des variables locals et d'environnements

```bash

#! bin/bash




Hello="Hello World !"




echo $Hello

echo "Vous utilisez souvent "$1 "et "$2 #Paramètres à mettre pendant l'appelle du script ex: bash Paramètres.sh Paramètre1 Paramètre2 -> Peut aller jusqu'à 8 max

echo "Le nom du script est "$0

echo "PID du Shell: "$$

echo "Code de retour "$?

```

## Appréhension intéraction utilisateur

### exercice 1

Réaliser avec select un script qui propose à l'utilisateur de choisir entre trois formats de dates différentes.
Ces formats seront : - J/M/A - M/A/J - A/J/

```bash
#! bin/bash

select date in "J/M/A" "M/A/J" "A/J/M"
do
echo "Vous avez choisi $date"
break
done
```

### exercice 2

Réaliser un script qui :
Demande à l'utilisateur son login, 5 caractères maximum peuvent être renseignés
Demande à l'utilisateur son Mot de passe, celui-ci ne doit pas s'afficher à l'écran et l'utilisateur à 10secondes pour le rentrer.
Affiche à l'écran le login et le mot de passe donné par l'utilisateur.

```bash
read -n 5 -p "Entrez votre login: " login # -n = limite le nombre d'entrée, -p permet de spécifier le message
read -s -t 10 -p "Entrez votre mot de passe: " mdp # -s = cache les entrées, -t limite le temps pour entrer l'input
echo "Votre login est $login et votre mot de passe est $mdp"
```

La variable spéciale "$#" en shell renvoie le nombre d'arguments passés à un script ou une fonction en ligne de commande.