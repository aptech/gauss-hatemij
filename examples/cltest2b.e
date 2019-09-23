/* 
** This example implements tests for cointegration with two 
** unknown structural breaks as suggested by Hatemi-J (2008, Empirical Economics). 
** The test provides the cointegration vector with the breaks.
** For critical values see the published paper. 
*/

load z[obs,var] = b22.txt;  /* Where obs is the number of your observations, 
				var is the number of your variables, and
 				b22 is your data file saved in text format.*/

y = z[1:obs,1];
x = z[1:obs,2:var];
obs = rows(y);

n = obs;

call main(y, x, 4, 2, 12);
end;
