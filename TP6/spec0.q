//This file was generated from UPPAAL 3.4.5, Mar 2004

/*
Absence de blocage
*/
A[] not deadlock 

/*
Inevitabilite d' ouvrir une connexion
*/
A<> initiateur.open and repondeur.open

/*
Possibilite d' ouvrir une connexion 
*/
E<> initiateur.open and repondeur.open 

/*
Taille de la fifo (R->I) <= 1
*/
A[] FifoRI.cpt <=1

/*
Possibilite de reception non specifiee (rns) pour le repondeur
*/
E<> repondeur.rns

/*
Possibilite de reception non specifiee (rns) pour l'initiateur
*/
E<> initiateur.rns

