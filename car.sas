data _null_;
infile'x:\Cars.dat';
input Age Sex Income Color$;
number=_N_;
if sex=2 then do;
g1='Female';
g2='her';
end;
if sex=1 then do;
g1='Male';
g2='his';
end;
g3=propcase(g2);
file'x:\Cars_Output.txt' print;
title;
put @5 'Observation ' number 'is ' g1+(-1) '.'
/@5 g3 'age is ' age 'and ' g2 'income is ' income dollar8. '.';
put _page_;
run;
