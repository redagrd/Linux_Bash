
# Créer un script qui vous propose le menu suivant :
# 1 - Verifier l'existance d'un utilisateur
# 2 - Connaitre l'UID d'un utilisateur
# 3 - Quitter

# L'utilisateur devra être saisi, à l'aide d'une fonction. Son existence devra être vérifiée à l'aide d'une autre fonction.
# spoiler alerte : /etc/passwd

# Utilisation de la commande :
# cat /etc/passwd

# Cette commande produit une entrée par ligne. 
# Chacune correspondant à un utilisateur du systeme. 
# Il existe 7champs, chacun séparés par un symbole :.
# Generalement qui apparait sous ce format :
# 1 : 2 : 3 : 4 : 5 : 6: 7
# vagrant:x:1000:1000:vagrant,,,:/home/vagrant:/bin/bash

# ces champs correspondent au attributs suivant :
# 1. Username: utiliser par l'utilisateur pour se "logs in" (connecter). Comprends entre 1 et 32 carracteres.
# 2. Password: Un "x" indique que le mot de pass est cryptés et stockés (/etc/shadow). Please note that you need to use the passwd command to computes the hash of a password typed at the CLI or tostore/update the hash of the password in /etc/shadow file.
# 3. User ID (UID): à chaque utilisateur est attribué un ID (UID). UID 0 (zero) is reserved for root and UIDs 1-99 are reserved for other predefined accounts. Further UID 100-999 are reserved by system foradministrative and system accounts/groups.
# 4. Group ID (GID): The primary group ID (stored in /etc/group file)
# 5. User ID Info (GECOS): The comment field. It allow you to add extra information about the users such asuser’s full name, phone number etc. This field use by finger command.
# 6. Home directory: The absolute path to the directory the user will be in when they log in. If this directorydoes not exists then users directory becomes /
# 7. Command/shell: The absolute path of a command or shell (/bin/bash). 
# Typically, this is a shell. Please note that it does not have to be a shell. For example, sysadmin can use the nologin shell, which acts asa replacement shell for the user accounts. If shell set to /sbin/nologin and the user tries to log in to theLinux system directly, the /sbin/nologin shell closes the connection.

# #!/bin/bash

function menu {