Bemployers = load'/data/pig/join/employers.txt' using PigStorage(','); 
employers = foreach Bemployers generate (int)$0 as id, (chararray)$1 as name , (int)$2 as date_embauche , (int)$3 as naissance ; 
Bsalaires =  load '/data/pig/join/employers.txt' using PigStorage(',') ;
salaires = foreach  Bsalaires  generate (int)$0 as id , (int)$1 as pourcentage , (int)$2 as salaire; 
join_data= join employers by id , salaires by id ; 
dump join_data;
perform_join = join employers by id , salaires by id using 'REPLICATED'; 
dump perform_join;
filter_join = filter perform_join by salaires::salaire >3000;
