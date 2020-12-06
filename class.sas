data cancerresults;
infile'x:\Canoes.dat';
input @'School:' School $ @'Time:' RaceTime :STIMER8.;
run;
proc print data = cancerresults;
run;
data sites;
input age site:$20. hits comma7.;
datalines;
12 http://sad.com  123,456
132 http://happy.com  56,723
;
run;
proc print data=sites;
run;
data highlow;
infile 'x:\Temperature.dat';
input city $ State$
/NormalHigh NormalLow
/ RecordHigh RecordLow;
run;
proc print data = highlow;
run; 
data rainfall;
infile 'x:\Precipitation.dat';
input City $ State $NormalPain MeanDaysPain @@;
run;
proc print data=rainfall;
run; 
data freeways;
infile 'x:\Traffic.dat';
input type $@;
if Type = 'surface' then delete;
input name $ 9-38 AMTraffic PMTraffic;
run;
proc print data=freeways;
title 'Traffic for Freeways';
run;
data fm;
input Gender $@;
if Gender='M' then delete;
input age 2. height 2.;
datalines;
M 2368
F 4462
;
run;
proc print data=fm;
run;
data icecream;
infile 'x:\IceCreamSales2.dat 'FIRSTOBS=3 OBS=4;
input Flavor $1-9 Location BoxesSold;
run;
proc print data=icecream;
run;
data class102;
infile 'x:\AllScores.dat' missover;
input name $ Test1 Test2 Test3 Test4 Test5;
run;
proc print data = class102;
run;
data homeaddress;
infile 'x:\Address.dat' truncover;
input Name $ 1-15 Number 16-19 Street $ 22-37;
run;
proc print data=homeaddress;
run;