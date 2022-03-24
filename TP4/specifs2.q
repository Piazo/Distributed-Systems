
//This file was generated from UPPAAL 3.4.5, Mar 2004

/*
Absence de blocage
*/
A[] not deadlock 

/*
Pb de synchro 
*/
E<> gauche.after_a and droit.after_b

/*
Pb de synchro 
*/
E<> gauche.after_b and droit.after_a 


/*
Possibilite d'avoir des communications sur a (gauche -> droite)
*/
E<> gauche.after_a



/*
Possibilite d'avoir des communications sur b (droite -> gauche)
*/
E<> gauche.after_b 


/*
Possibilite d'avoir infiniment des communications sur a (gauche -> droite)
*/
E[] not gauche.after_b

/*
Possibilite d'avoir infiniment des communications sur b (droite -> gauche)
*/
E[] not gauche.after_a