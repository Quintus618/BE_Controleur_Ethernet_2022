# BE_Controleur_Ethernet_2022
DOUARRE Quentin, FAVARY Pierre
4IR-SC, INSA Toulouse

Programmation d'un contrôleur Ethernet 10 sous Vivado d'après le manuel technique de LSILogic de 1997.

"controller_fpga" contient les trois parties du contrôleur: réception transmission, détection de collision. Les tests pour chacun sont dans un même fichier, cependant ceux de réception d'une part et de transmission/collision ne doivent pas être décommentés en même temps sans quoi il y aura des problèmes liés à la chronologie.
Nous avons pu mener à bien les trois parties.

Tests effectués:

Réception:
*Réception d'une trame addressé à addr, puis
*Réception d'une trame destiné à un autre addresse.
Adresse destination, SFD et EDF ne sont pas passés en rdatao.

Transmission et Collision:
*Envoi standard,
*Envoi annulé par la réception dun signal abort,
*Réception et Transmission en simultané créant une collision (TSOCOLP). TSOCOLP finit par revenir à 0 une fois la collision achevée.

L'ensemble des tests a donné les résultats attendus.


Choix:
*Il a été choisi de considérer un SFD et un EFD différents pour faciliter la délimitation des trames.
*Nous n'avons implémenté que TLASTP et non TFINISHP, ayant des finalités semblables.
*Nous avons choisi d'émettre le EFD de même en cas d'interruption de la transmission (et en cas de collision tdonep reste à 0) car les parties 4-3 et 4-4 du manuel technique étaient ambigues sur ce point et nous n'avions pas implémenté de reconnaissance des bits de paddings (10101010) par le récepteur (qui comprend en revanche les EFD et SFD).
*Conformément à 4-3 et 4-4 toujours, TREADDP n'est pas activé pour les adresses mais uniquement pour la partie données.
*Certaines variables "de sauvegarde d'état" ont été rajoutées en interne, par exemple aborting qui permet de garder en mémoire la réception d'un TABORTP sur cette trame, ou "en_cours" qui permet de savoir qu'on a commencé à émettre une trame (et donc un SFD) et qu'on ne peut donc pas s'arrêter avant d'avoir transmis les adresses et l'EFD même si aucune donnée n'est disponible à transmettre.

La fréquence maximale de fonctionnement est de 240MHz.
Le schéma final comporte 306 cellules feuilles.
