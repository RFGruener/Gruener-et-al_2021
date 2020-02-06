library(tidyverse) 

CTRP_5CV <- read.delim(file = "E:/Research/a) General-methods_Imputations_Biomarkers/Cross-Validations/CTRPv2_RNAseq_TPM_5fold_CV.txt", sep = "\t")

ggplot(data = CTRP_5CV) + 
   geom_histogram(aes(x = CTRP_5CV$Spearman_Cor), bins = 50) + 
   theme_bw()+ 
   scale_x_continuous(breaks = (-3:10)/10, limits = c(NA, 0.9)) + 
   geom_vline(xintercept = 0.3, color = "red") + 
   labs(title = "Distribution of Cross-Validation Results" , 
        x = "Spearman Correlation from 5-Fold CV")
