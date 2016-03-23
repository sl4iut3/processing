
= BalleReseau

== Introduction

jeu classique de balle rebondissant sur les bords de l'écran, version POO

== Réseau

rajout d'un contrôleur réseau qui écoute sur le port 5555 par défaut (paramétrable si le constructeur est surchargé) et qui décode les commandes suivantes:

    r=5              rayon des balles égal à 5
    cr=100           couleur rouge des balles positionnée à 100
    alea=1           taille et couleur aléatoire pour toutes les balles

== Client réseau

netcat, ou nc, est le client à utiliser dans un premier temps

    nc localhost 5555

éventuellement, écrire un programme Processing qui dialogue avec le contrôleur


