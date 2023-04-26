#! /bin/bash
cd /home/redagrd/Téléchargements
mkdir Autre Image Musique Video
touch /home/redagrd/Téléchargements/Musique/musique.mp3
echo -e "Ceci est le fichier de Téléchargement. \n Merci de respecter l'organisation du répertoire. \n Attention auc virus. \n Le dossier de téléchargement est prêt" > ReadMe.txt
grep -i "Téléchargement" ReadMe.txt #-i = insensible à la casse, affiche téléchargement en min et en Maj
