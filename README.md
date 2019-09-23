# Gruener-et-al_2019
Code and project files for our manuscript on imputing drug response in TNBC patients and follow up with the Wee1 Inhibitor AZD1775


### pRRophetic_plus

This project is intended to be used for imputing drug sensitivty in test expression datasets using CTRP/CCLE data as done in our paper "Imputing a Targeted Therapy for Triple-Negative Breast Cancer: Wee1 Inhibition" (working title). 

Generally the flow goes Download -> Clean -> Impute -> Analyze. There are different files for some of these steps:

#### Download: 
There is only the [Download_TCGA-GDSC-CTRP-CCLE.Rmd](Download_TCGA-GDSC-CTRP-CCLE.Rmd) R notebook/script, which does exactly as the name implies. At the moment, it only downloads the TCGA BRCA dataset. 

#### Clean: 
There is only the [Clean_Cell-Line-Screening-Data.Rmd](Clean_Cell-Line-Screening-Data.Rmd) R notebook, which cleans the CTRP/CCLE files. 

#### Impute:

Again, there are multiple files regarding imputing. 

The first file, [Imputing Drug Response in TCGA.Rmd](Imputing Drug Response in TCGA.Rmd) which uses the CTRP/CCLE data as training data and imputes drug response in the TCGA RNA-Seq cohort. This is analyzed later to look for drugs of interest for TNBC as well as biomarkers. 

The second file, [Imputing Drug Response in GDSC.Rmd](Imputing Drug Response in GDSC.Rmd), imputes drug sensitivity in the GDSC cell lines, which is analyzed later to look at the agreement between our imputed drug response and the measured sensitivity these cell lines have to the Wee1 inhibitor AZD1775. 

#### Analyze: 


