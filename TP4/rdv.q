//This file was generated from (Academic) UPPAAL 4.1.25-5 (rev. 643E9477AA51E17F), April 2021

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
