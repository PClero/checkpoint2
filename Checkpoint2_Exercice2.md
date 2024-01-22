Q.2.1 Lorsque l'on exécute le script il y a une erreur et le script AddLocalUsers.ps1 ne s’exécute pas.
Corrige ce script pour que le script AddLocalUsers.ps1 s'éxecute.
 il faut changer le chemin "C:\Temp\addlocalusers.ps1" par "C:\Scripts\AddLocalUsers.ps1"

Q.2.2 Le premier utilisateur du fichier Users.csv n'est jamais pris en compte. Modifie le script pour que cela soit le cas.
à la ligne 44 il faut changer "Select-Object -Skip 2" par "Select-Object -Skip 1" car avec skip 2 il ignore les 2 premières lignes du .csv

Q.2.3 Le champs Description est importé du fichier mais non-utilisé. Modifie le code pour que ce champs soit utilisé dans la création des utilisateurs.

Q.2.4 Dans l'importation des utilisateurs du fichier CSV, tous les champs sont pris. Or il n'y en a qu'une partie qui est utilisé par la suite. Corrige pour qu'il n'y ait que les champs utilisés pour la création des utilisateurs qui soient importés du fichier CSV.

Q.2.5 Le mot de passe crée n'est pas affiché, donc on ne le connait pas. Affiche le avec le message indiquant qu'un compte est crée.

Q.2.6 Une fonction de création de log, nommée Log existe. Utilise là pour journaliser l'activité du script et les actions importantes du script.

Q.2.7 Si l'utilisateur à créer existe déjà, il n'est pas crée. Or cette information n'est pas affichée, donc on ne le sait pas. Modifie le code pour que cela s'affiche.

Q.2.8 L'ajout des utilisateurs dans le groupe des utilisateurs locaux ne fonctionne pas. Corrige le script pour que cela fonctionne.

Q.2.9 Plusieurs fois dans le code du scrip, la chaine "$Prenom.$Nom" est utilisée. Remplace cette chaîne par une variable $Name que tu initialise correctement.

Q.2.10 Les comptes utilisateurs créer ont un mot de passe qui expire. Corrige cela pour qu'il n'expire pas.

Q.2.11 Modifie le code pour que le mot de passe soit constitué de 10 caractères au lieu de 6.

Select-Object -Skip 1
