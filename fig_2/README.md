# Figure 2

The code and files here can reproduce Figure 2 of the rakaia paper.

First, the raw cell channel intensities for the IMC cohort can be downloaded from here: https://zenodo.org/records/20157957, in the zip bundle **dm_immune_fig_2.zip** and placed in this directory as `measurements.csv`. Then, the following notebooks should be run in order:

- `filter_imc_quantification.ipynb`: Process the raw intensities in the CSV file above and performs UMAP dimension reduction and leiden clustering on the single-cell expression. Outputs `rakaia_dataset_clustered.h5ad` in the same directory. 
- `hyperplasia_counts_umap.ipynb`: Uses the `rakaia_dataset_clustered.h5ad` Anndata object from the step above to plot the UMAP of single cells coloured by the predicted hyperplasia phenotype, and generates the bar plot of ROIs ranked by number of hyperplastic cells found in the prediction. 


Additionally, the file `hyperplasia_blend.json` can be used in Rakaia to generate the same blend shown for the ROI query image in Panel b. 

