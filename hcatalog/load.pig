A = load 'employers' using org.apache.hive.hcatalog.pig.HCatLoader();
describe A ; 
dump A;