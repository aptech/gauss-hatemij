#include cItest2b.src

/* 
** This example implements tests for cointegration with two 
** unknown structural breaks as suggested by Hatemi-J (2008, Empirical Economics). 
** The test provides the cointegration vector with the breaks.
** For critical values see the published paper. 
*/

z = packr(loadd( __FILE_DIR $+ "/nelsonplosser.dta", "m + bnd"));

y = z[., 1];
x = z[., 2];


call coint2b(y, x, 4, 2, 12);
end;
