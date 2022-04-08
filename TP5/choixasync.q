//This file was generated from (Academic) UPPAAL 4.1.25-5 (rev. 643E9477AA51E17F), April 2021

/*

*/
E[] not gauche.apres_envoi

/*

*/
E[] not gauche.apres_recoit 

/*

*/
E<> gauche.apres_recoit 

/*

*/
E<> gauche.apres_envoi

/*

*/
A[] not deadlock

/*

*/
E<> gauche.apres_envoi and droit.apres_envoi

/*

*/
E<> (FifoLR.cpt + FifoRL.cpt) == 3

/*

*/
A[] (FifoLR.cpt<=2)\


/*

*/
E<> gauche.apres_recoit and droit.apres_recoit
