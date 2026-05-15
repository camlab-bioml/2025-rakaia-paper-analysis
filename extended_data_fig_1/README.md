# Extended Data Figure 1

The two notebooks in this directory can be run to recreate recreate Extended Data Figure 1. They should be run in order. Instructions for the raw data to required for each step are found in the notebook; they can be accessed here: https://zenodo.org/records/20157957 :

- `process_raw_xenium.ipynb`, to generate the Xenium data files required for the multimodal transformation and integration
- `xenium_imc_multimodal_integration.ipynb`, to perform the integration of the Xenium data into the IMC resolution. 

Once the outputs are created, the output files from the second notebook can be imported into Rakaia, and the `compartment_blends.json` session parameter JSON can also be imported to recreate the blended images by selecting the relevant channels from the figure. Note that the default blend is for the luminal compartment. 