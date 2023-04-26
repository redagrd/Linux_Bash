#Réaliser un script qui demande à l'utilisateur d'écrire "Je veux sortir" pour quitter le script.
#Tant que l'utilisateur n'aura pas écrit la réponse attendue, le script affichera "Mauvaise réponse. 
#Pour sortir,taper 'Je veux sortir'" pour chacune de ses réponses.

#./hello.sh
#Pour sorir de ce script, taper 'Je veux sortir' : leave  
#Mauvaise réponse. Pour sortir,  taper 'Je veux sortir' : 24
#Mauvaise réponse. Pour sortir,  taper 'Je veux sortir' : é
#Mauvaise réponse. Pour sortir,  taper 'Je veux sortir' : @
#Mauvaise réponse. Pour sortir,  taper 'Je veux sortir' : Je veux sortir 
#Au revoir !


# !/bin/bash
while true
do
    read -p "Pour sortir de ce script, taper 'Je veux sortir' : " reponse
    if [ "$reponse" != "Je veux sortir" ]
    then
        echo "Mauvaise réponse. Pour sortir, taper 'Je veux sortir'"
    else
        echo "Au revoir !"
        break
    fi
done


#Réaliser le même script, mais avec une boucle until

until [ "$reponse" = "Je veux sortir" ]
do
    read -p "Pour sortir de ce script, taper 'Je veux sortir' : " reponse
    if [ "$reponse" != "Je veux sortir" ]
    then
        echo "Mauvaise réponse. Pour sortir, taper 'Je veux sortir'"
    else
        echo "Au revoir !"
    fi
done
