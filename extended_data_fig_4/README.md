# Extended Data Figure 4

The code and files here can reproduce Extended Data Figure 4 of the rakaia paper. 

To recreate the gating histogram plots, simply execute `histogram_gating_ztma26_70.R`, 
and modify the appropriate threshold in the code for each sub-panel A through D. This file 
reads the quantified single cells corresponding to the `ztma26_70` ROI in 
`measurements_ccd4_ztma26_70.csv`. 

This quantification CSV, along with the raw IMC imaging 
data, segmentation mask ([INSERT DOWNLOAD LINK]), and session parameter JSON 
(`ztma26_70_cd4_blend.json`) can all be re-imported into rakaia to re-create the 
visual gating images for each sub-panel. 


