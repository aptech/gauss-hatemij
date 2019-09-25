/*
** This code is based on the original ContagT.prg file provide by
** Abdulnasser Hatemi-J
*/

/*
** This Gauss program performs Hatemi-J and Hacker (2005) 
** pairwise bootstrap test for contagion and it also 
** gives pairwise bootstrap estimators and bootstrap 
** P-values as suggested by the authors!
** Applied Financial Economics Letters, 1(6)
*/


load w[obs, 2] = ?.txt;  		

// Set random seed for reproducibility
rndseed 45438;

//  Number of observations for the period before the crisis
obslow = ? ; 				

// Number of observations for the period after the crisis
obshigh = ?; 				

// The two obslow and obshigh equal obstot
obstot = obslow + obshigh;

// Separate variables
Y = w[., 1];
X = w[., 2];
