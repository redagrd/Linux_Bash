#Réaliser un script bash qui va classer dans des sous répertoire tous les fichiers d'un répertoire selon leurs extensions.
#Le script prend en argument le nom du répertoire cible.

# !/bin/bash

read -p "entrez le nom du répertoire cible" rep
mkdir $rep

for fichiers in $(ls)
do
    if [ -f $fichiers ]
    then
        ext=${fichiers##*.}
        if [ ! -d $rep/$ext ]
        then
            mkdir $rep/$ext
        fi
        mv $fichiers $rep/$ext
    fi
done