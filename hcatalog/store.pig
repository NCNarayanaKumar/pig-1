A = load '/data/pig/join/employers.txt' as (id: int , fname:chararray , embauche:int, naissance:int);
Store A into 'pig_employers' using org.apache.hive.hcatalog.pig.HCatStorer();