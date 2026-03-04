# Extended Data Figure 5

The code and files here can reproduce Extended Data Figure 5 of the rakaia paper. 

The MCD file for the 3 images shown in thie figure can be downloaded here: https://zenodo.org/records/5949116 (users should select `Patient1.mcd`). 

To generate single-cell segmentation masks and mean intensity quantification results, this MCD file should be processed through the `steinbock snakemake` pipeline found here: https://github.com/camlab-bioml/steinbock_snakemake. The `config.yaml` file in this directory contains the configuration file required to run steinbock on the raw MCD file. 

Once completed, the entire steinbock directory can be imported into Rakaia; instructions for import are found here: https://rakaia.io/docs/data_import#importing-from-a-pipeline. Once imported, users can run leiden clustering on the quantification data using instructions found here: https://rakaia.io/docs/plugins. Resulting leiden clusters can be interactively subset in a manner similar to the figure, and projected into Rakaia's dataset gallery. 

The `patient1_immune.json` file in this directory can be used to re-generate the underlying marker blends for the 3 ROIs. 