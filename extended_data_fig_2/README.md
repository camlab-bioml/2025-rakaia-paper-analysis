# Extended Data Figure 2

This directory contains instructions and Rakaia files to be able to recreate the data for Extended Data Figure 2 (example of 10x xenium in situ hybriziation data, human colorectal cancer). 

These data are publicly available here: https://www.10xgenomics.com/datasets/ffpe-human-colorectal-cancer-data-with-human-immuno-oncology-profiling-panel-and-custom-add-on-1-standard

The `Xenium Output Bundle (full)` should be download and unzipped, and read as either a zarr directory store with the code shown here: https://rakaia.io/docs/spatial#10x-xenium-in-situ-expression, or as an ANndata object with just the cell-level transcript expression as shown in this example: https://github.com/camlab-bioml/rakaia/blob/main/examples/xenium_preprocessing.ipynb

To include the H&E image with matched panning and zooming, both supplementary files should be downloaded. Information on how to import Whole-slide images (WSI) with transformation matrices can be found here: https://rakaia.io/docs/wsi

The `xenium_colorectal.json` file in this directory can be downloaded and imported into Rakaia to re-generate the identical blend of markers as used in the main canvas of this figure. 

