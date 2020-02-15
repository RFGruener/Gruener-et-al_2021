library(tidyverse)


moas <- read_csv("./Included_Data/Drug_targets(review).csv")


genes <- moas %>% filter(Database == "CTRPv2") %>% .$Targets %>% str_split(., pattern = "\\|", simplify = T) %>% table() 

names(genes)


moas %>% filter(Database == "CTRPv2") %>% .$Targets %>% strsplit(., split = "\\|") %>% unlist() %>% 
   unique %>% .[!. %in% c("#N/A", 0, "")] %>% 
   length()
                                                 
