Q.1.1 Pourquoi le ping avec les adresses IP des machines ne fonctionnent pas ?
ils ne sont pas sur le même réseau
Explique ce que tu as fait et montre le par des copies d'écran.
j'ai changé l'adresse du client en 172.16.10.50

On doit avoir la copie d'écran d'un ping fonctionnel:
ping effectué depuis SRVWIN2022
C:\Users\Administrator>ping 172.16.10.50

Pinging 172.16.10.50 with 32 bytes of data:
Reply from 172.16.10.50: bytes=32 time=1ms TTL=128
Reply from 172.16.10.50: bytes=32 time<1ms TTL=128
Reply from 172.16.10.50: bytes=32 time<1ms TTL=128
Reply from 172.16.10.50: bytes=32 time<1ms TTL=128

Ping statistics for 172.16.10.50:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 1ms, Average = 0ms

C:\Users\Administrator>

Q.1.2 Le ping avec le nom des machines ne fonctionne pas.
j'ai rajouté l'adresse du DNS (127.0.0.1) sur le client pour que cela fonctionne
ping effectué depuis SRVWIN2022
C:\Users\Administrator>ping Client1

Pinging Client1.local [fe80::6e71:c871:d81b:ea22%6] with 32 bytes of data:
Reply from fe80::6e71:c871:d81b:ea22%6: time<1ms
Reply from fe80::6e71:c871:d81b:ea22%6: time=1ms
Reply from fe80::6e71:c871:d81b:ea22%6: time<1ms
Reply from fe80::6e71:c871:d81b:ea22%6: time=1ms

Ping statistics for fe80::6e71:c871:d81b:ea22%6:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 1ms, Average = 0ms

C:\Users\Administrator>

Q.1.3 Modifie la configuration réseau du client pour qu'il soit en DHCP.
Vérifie le paramétrage DHCP sur le serveur et compare le avec l'adresse IP du client.
Explique pourquoi le client ne récupère pas la 1ère adresse disponible sur la plage DHCP du serveur ?
Fais une copie d'écran montrant l'adresse IP prise par le client.

Q.1.4 Est-ce que ce client peut avoir l'adresse IP 172.16.10.15 en DHCP ?
Si oui fais les manipulations nécessaires.
Explique ce que tu as fait et montre par une copie d'écran le résultat de la commande ipconfig /all sur le client.
