# Extended Data Figure 3

Below are files and instructions for recreating Extended Data Figure 3 (10x Visium multi-channel gallery of breast tissue). 

The 10 Visium slides are publicly available here: https://cellxgene.cziscience.com/collections/4195ab4c-20bd-4cd3-8b3d-65601277e731, with each spatial sample tagged as `visium spatial - sample vXX`. Some of the files are quite large, as they have large WSIs stashed in them. To make rakaia more performant when loading these images, it is recommended to filter out any large WSIs that can be rendered separately from the Visium spots. In python, this can be achieved by reading in the sample as an anndata object:

```
import anndata as ad

adata = ad.read_h5ad(path_to_visium_sample)

adata.uns = {'spatial': {str(list(adata.uns['spatial'].keys())[0]): {
           'scalefactors': adata.uns[
               'spatial'][list(adata.uns['spatial'].keys())[0]]['scalefactors']}}}

adata.write_h5ad(path_to_visium_sample)
```

The file `visium_breast.json` can be imported into Rakaia once all 10 Anndata samples have been imported to re-generate the exact marker blend used in this figure. 



