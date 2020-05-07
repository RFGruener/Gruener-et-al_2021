# look at IDWAS results with PAM50 correction
library(tidyverse)

IDWAS <- read_csv("E:/Research_Repos/1_git_repos/pRRophetic_plus/b_scripts-and-results/14_Analyze_biomarkers/b) IDWAS and Biomarkers/IDWAA/CTRPResults_BRCA_correctForPAM50.csv")

res <- IDWAS %>% 
   separate(X1, into = c("DRUG", "GENE"), sep = "\\.") %>% 
   filter(DRUG %in% c("AZD7762", "leptomycin B", "MK-1775", "dinaciclib", "alvocidib", "SNS-032", "PHA-793887", "BRD-K30748066",
                      "CR-1-31B", "GSK461364", "BI-2536", "rigosertib", 
                      "MLN2238", "docetaxel","triazolothiadiazine","SB-743921","SR-II-138A")) %>% 
   filter(GENE == "TP53")
   filter(`FDR (BH corrected)` < 0.05)

