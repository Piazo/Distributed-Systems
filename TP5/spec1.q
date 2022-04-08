//This file was generated from UPPAAL 3.4.5, Mar 2004

/*
Absence de blocage
*/
A[] not deadlock 

/*
Pb de synchro 
*/
E<> gauche.apres_envoi and droit.apres_envoi

/*
Pb de synchro 
*/
E<> gauche.apres_recoit and droit.apres_recoit


/*
Possibilite d'avoir des communications sur a (gauche -> droite)
*/
E<> gauche.apres_envoi



/*
Possibilite d'avoir des communications sur b (droite -> gauche)
*/
E<> gauche.apres_recoit 


/*
Possibilite d'avoir infiniment des communications sur a (gauche -> droite)
*/
E[] not gauche.apres_recoit 



/*
Possibilite d'avoir infiniment des communications sur b (droite -> gauche)
*/
E[] not gauche.apres_envoi
