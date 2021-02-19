# Facilitating Drug Discovery in Breast Cancer by Virtually Screening Patients Using In Vitro Drug Response Modeling

### Gruener et al, 2021 
#### Published in *Cancers*

Code and project files for our manuscript on imputing drug response in TNBC patients and follow up with the Wee1 Inhibitor AZD1775


This project is intended to be used for imputing drug sensitivity in test expression datasets using CTRP/CCLE data.

**Generally the flow goes Download -> Clean -> Impute -> Analyze. There are different files for some of these steps:**


#### Download: 
There is only the [01_Download_TCGA-GDSC-CTRP-CCLE.Rmd](01_Download_TCGA-GDSC-CTRP-CCLE.Rmd) R notebook/script, which does exactly as the name implies. At the moment, it only downloads the TCGA BRCA dataset. 

#### Clean: 
There is only the [02_Clean_Cell-Line-Screening-Data.Rmd](02_Clean_Cell-Line-Screening-Data.Rmd) R notebook, which cleans the CTRP/CCLE files. 

#### Impute:

Again, there are multiple files regarding imputing. 

The first file, [03_Imputing Drug Response in TCGA.Rmd](03_Imputing Drug Response in TCGA.Rmd) which uses the CTRP/CCLE data as training data and imputes drug response in the TCGA RNA-Seq cohort. This is analyzed later to look for drugs of interest for TNBC as well as biomarkers. 

The second file, [03_Imputing Drug Response in GDSC.Rmd](03_Imputing Drug Response in GDSC.Rmd), imputes drug sensitivity in the GDSC cell lines, which is analyzed later to look at the agreement between our imputed drug response and the measured sensitivity these cell lines have to the Wee1 inhibitor AZD1775. 

The third file, [03A_Imputing_Cross Validation of CTRP.Rmd](03A_Imputing_Cross Validation of CTRP.Rmd) is the file that generates the crossvalidation results for supplemental figure 1. 

#### Analyze: 

There are several analysis files. These files use the imputed values from above and analyze them to identify compounds of interest for TNBC. These general make up the figures, tables, and supplement for the paper.


#### Folder Structure

The folders are organized such that all the scripts exist in the parent directory. The DataIn Folder is generated in the download code and is where the download data goes. The DataOut folder is created with the analysis code and is populated with items from after running that code. The Included Data folder is for data that was either generated for the paper or simply would be difficult to download from source in a programmatic way. Additionally, the IDWAS imputations are already done and in that folder. For that data, we recommend you go to our IDWAS manuscript. pubmed.ncbi.nlm.nih.gov/28847918 and 






