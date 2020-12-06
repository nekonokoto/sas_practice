data findat;
infile 'x:\findat.txt' dlm=',' dsd missover;
input ssn:$11. name:$20.  salary: comma10. ;
run;
proc print data=findat;
var ssn salary;
run;




data names;
infile datalines;
input n1$ n2$ n3$ n4$ n5$;
array low (5) $n1-n5;
array new (5) $c1-c5;
do i=1 to 5;
new(i)=upcase(low(i));

end;

datalines;
smithers michaels gonzalez hurth frank 
;
run;
proc print data=names;
title 'names';
run;
