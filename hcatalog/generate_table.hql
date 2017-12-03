Create table employers (id int , fname string , embauche int , naissance int) 
row format delimited 
fields terminated by ',' 
stored as textfile ; 
load data inpath'/data/pig/join/employers.txt' into table employers; 
Create table pig_employers (id int , fname string , embauche int , naissance int) 
row format delimited 
fields terminated by ',' 
stored as textfile ; 
