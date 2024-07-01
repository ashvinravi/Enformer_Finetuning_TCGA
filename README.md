# Pollard Lab Rotation Project - Spring 2024 

This GitHub repository contains all of the jupyter notebook files as well as fine-tuned models used for this rotation. 

## PART 1: Fine-tuning Enformer on TCGA data
- PCA to explain fine-tuning on just TCGA-COAD/TCGA-READ vs. including HCMI: CRC_PCA_preprocessing.ipynb
- **Fine-tuning the model**: CRC_finetuning.ipynb
- **Fine-tuned Model that predicts raw counts**: https://www.dropbox.com/scl/fo/pwpw29r3bfj6mkkw0p3w2/AKyifs1gFn0NI7JgdEzU5Mw?rlkey=kko9brrhq6f1utcr2vkzb7frk&st=1ljjxh4h&dl=0
- **Parameter Tuning Plots for outputs**: hyperparameter_tuning_plots.ipynb
- **Test on HCMI validation set**: HCMI_validation_set.ipynb

## PART 2: Cell-type specificity analysis on TCGA cancer types
- All TCGA data is in /pollard/home/aravi1/TCGA_matrices/ - too large to upload on GitHub
- Folder for all analyses: TCGA_cancer_type_eval/

## PART 3: In-silico Mutagenesis with SuPreMo:
- Folder for all analyses: in_silico_mutagenesis/
- Selecting candidate variants: variant_selection_supremo.ipynb
- Testing actual in-silico mutagenesis: in_silico_mutagenesis_CRC_variants.ipynb
