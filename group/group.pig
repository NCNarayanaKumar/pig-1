buts = load '/pig/group/data.txt' using PigStorage(',');
cleaned_buts = foreach buts generate (chararray)$1 as fname , (int)$2 as naissance , (chararray)$3 as equipe , (int)$4 as buts , (int)$5 as saison; 
group_equipe = group cleaned_buts by equipe ;
sum_buts = foreach group_equipe generate group , SUM(cleaned_buts.buts);
dump sum_buts;
group_naissance = group cleaned_buts by naissance ;
avg_but_naissance = foreach group_naissance generate group , AVG(cleaned_buts.buts);
store avg_but_naissance into '/data/pig/group/input' using PigStorage('\t');


