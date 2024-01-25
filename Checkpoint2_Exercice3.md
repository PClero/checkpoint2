**Q.3.1 Quel est le matériel réseau A ?**\
un switch\
**Quel est son rôle sur ce schéma vis-à-vis des ordinateurs ?**\
il permet de connecter plusieurs ordinateurs au même réseau local

**Q.3.2 Quel est le matériel réseau B ?**\
un routeur\
**Quel est son rôle pour le réseau 10.10.0.0/16 ?**\


**Q.3.3 Que signifie f0/0 et g1/0 sur l’élément B ?**\
FastEthernet slot 1\
GigabitEthernet slot 1

**Q.3.4 Pour l'ordinateur PC2, que représente /16 dans son adresse IP ?**\
le masque de sous réseau ou CIDR

**Q.3.5 Pour ce même ordinateur, que représente l'adresse 10.10.255.254 ?**\
la passerelle par défaut

**Q.3.6 Pour les ordinateur PC1, PC2, et PC5 donne :**\
PC1\
Adresse de réseau: 10.10.0.0\
Première adresse disponible: 10.10.0.1\
Dernière adresse disponible: 10.10.255.254\
Adresse de diffusion: 10.10.255.255\
PC2\
Adresse de réseau : 10.11.0.0\
Première adresse disponible : 10.11.0.1\
Dernière adresse disponible : 10.11.255.254\
Adresse de diffusion : 10.11.255.255\
PC5\
Adresse de réseau : 10.10.0.0\
Première adresse disponible : 10.10.0.1\
Dernière adresse disponible : 10.10.1.254\
Adresse de diffusion : 10.10.1.255

**Q.3.7 En t'aidant des informations que tu as fourni à la question 3.6, et à l'aide de tes connaissances, indique parmi tous les ordinateurs du schéma, lesquels vont pouvoir communiquer entre-eux.**\
Le PC1, le PC3 et le PC4 pourront communiquer entre eux

**Q.3.8 De même, indique ceux qui vont pouvoir atteindre le réseau 172.16.5.0/24.**\
Tous les PC sauf PC2

**Q.3.9 Quel incidence y-a-t'il pour les ordinateurs PC2 et PC3 si on interverti leur ports de connexion sur le matériel A ?**\
Rien

**Q.3.10 On souhaite mettre la configuration IP des ordinateurs en dynamique. Quelles sont les modifications possible ?**\
Il faut un serveur DHCP

**Wireshark 🦈**

**Fichier 1 :**

**Q.3.11 Sur le paquet N°5, quelle est l'adresse mac du matériel qui initialise la communication ?**\
00:50:79:66:68:00\
**Déduis-en le nom du matériel.**\
ETHERNET II

**Q.3.12 Est-ce que la communication enregistrée dans cette capture a réussi ?**\
oui, entre les matériels 00:50:79:66:68:00 et 00:50:79:66:68:03

**Q.3.13 Dans cette capture, à quel matériel correspond le request et le reply ?**\
**Donne le nom, l'adresse IP, et l'adresse mac de chaque materiel.**\
request 10.10.4.1 00:50:79:66:68:00\
reply 10.10.4.2 00:50:79:66:68:03

**Q.3.14 Dans le paquet N°2, quel est le protocole encapsulé ? Quel est son rôle ?**\
Le protocole ARP (Address Resolution Protocol) est un protocole réseau utilisé pour résoudre les adresses IP en adresses MAC

**Q.3.15 Quels ont été les rôles des matériels A et B dans cette communication ?**\


**Fichier 2 :**

**Q.3.16 Dans cette trame, qui initialise la communication ? Donne l'adresse IP ainsi que le nom du matériel.**\
10.10.80.3

**Q.3.17 Quel est le protocole encapsulé ? Quel est son rôle ?**\
ICMP (Internet Control Message Protocol) \
C'est un protocole réseau utilisé pour envoyer des messages de contrôle et de diagnostic entre les équipements réseau.

**Q.3.18 Est-ce que cette communication a réussi ?**\
non, le périphérique destinataire (10.10.80.3) est inaccessible

**Q.3.19 Explique la ligne du paquet N° 2**\
cette ligne indique qu'une trame ICMP a été capturée, dont l'adresse IP source est 10.10.255.254, l'adresse IP destination est 10.10.80.3, et le message ICMP est injoignable avec le code retour "Host unreachable". Cela indique qu'un équipement a tenté d'envoyer un message à l'adresse 10.10.80.3, mais cette adresse était inaccessible.

**Q.3.20 Quels ont été les rôles des matériels A et B ?**\
A est la source et B est la destination.

**Fichier 3 :**

**Q.3.21 Dans cette trame, donne les noms et les adresses IP des matériels sources et destination.\
source IP 10.10.4.2**\
destination IP 172.16.5.253

**Q.3.22 Quelles sont les adresses mac source et destination ?**\
adresse mac source ca:01:da:d2:00:1c\
adresse mac destination ca:03:9e:ef:00:38

**Q.3.23 A quel emplacement du réseau a été enregistré cette communication ?**\
le routeur
