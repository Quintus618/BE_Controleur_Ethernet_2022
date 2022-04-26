# BE_Controleur_Ethernet_2022

DOUARRE Quentin, FAVARY Pierre

Programmation d'un contrôleur Ethernet 10 sous Vivado d'après le manuel technique de LSILogic de 1997.

Deux projets ont été créé sur une même source, controller_fpga qui contient le test de réception et  Transmission qui contient les tests de transmission et de collision.

Réception:
*Réception d'une trame addressé à addr, puis
*Réception d'une trame destiné à un autre addresse.
Adresse destination, SFD et EDF ne sont pas passés en rdatao.

Transmission et Collision:
*Envoi standard,
*Envoi annulé par la réception dun signal abort,
*Réception et Transmission en simultané créant une collision (TSOCOLP).

Choix: il a été choisi de considérer un SFD et un EFD différents pour faciliter la délimitation des trames.
Nous n'avons implémenté que TLASTP et non TFINISHP, ayant des finalités semblables.
En cas d'interruption de la transmission, le EFD n'est pas émis (et en cas de collision tdonep reste à 0) conformément aux parties 4-3 et 4-4 du manuel technique.

La fréquence maximale de fonctionnement est de 240MHz.
Le schéma finale comporte 306 cellules feuilles.
