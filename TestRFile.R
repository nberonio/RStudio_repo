library(raster)
library(terra)
library(ggplot2)
library(sp)
library(sf)
library(RColorBrewer)
library(tidyverse)
library(caret)
library(RStoolbox)

Ashby1_1 = brick("RStudio/NDVI Difference Rasters 2.0/Ashby1_NDVIdif_1.tif")
Ashby1_2 = brick("RStudio/NDVI Difference Rasters 2.0/Ashby1_NDVIdif_2.tif")
Ashby2_1 = brick("RStudio/NDVI Difference Rasters 2.0/Ashby2_NDVIdif_1.tif")
Ashby2_2 = brick("RStudio/NDVI Difference Rasters 2.0/Ashby2_NDVIdif_2.tif")
Bebout_1 = brick("RStudio/NDVI Difference Rasters 2.0/Bebout_NDVIdif_1.tif")
Bebout_2 = brick("RStudio/NDVI Difference Rasters 2.0/Bebout_NDVIdif_2.tif")
Blowdown_1 = brick("RStudio/NDVI Difference Rasters 2.0/Blowdown_NDVIdif_1.tif")
Blowdown_2 = brick("RStudio/NDVI Difference Rasters 2.0/Blowdown_NDVIdif_2.tif")
CedarLake_1 = brick("RStudio/NDVI Difference Rasters 2.0/Cedar_NDVIdif_1.tif")
CedarLake_2 = brick("RStudio/NDVI Difference Rasters 2.0/Cedar_NDVIdif_2.tif")
Dennison_1 = brick("RStudio/NDVI Difference Rasters 2.0/Dennison_NDVIdif_1.tif")
Dennison_2 = brick("RStudio/NDVI Difference Rasters 2.0/Dennison_NDVIdif_2.tif")
Inagheh1_1 = brick("RStudio/NDVI Difference Rasters 2.0/Inagheh1_NDVIdif_1.tif")
Inagheh1_2 = brick("RStudio/NDVI Difference Rasters 2.0/Inagheh1_NDVIdif_2.tif")
Inagheh2_1 = brick("RStudio/NDVI Difference Rasters 2.0/Inagheh2_NDVIdif_1.tif")
Inagheh2_2 = brick("RStudio/NDVI Difference Rasters 2.0/Inagheh2_NDVIdif_2.tif")
Johnson_1 = brick("RStudio/NDVI Difference Rasters 2.0/Johnson_NDVIdif_1.tif")
Johnson_2 = brick("RStudio/NDVI Difference Rasters 2.0/Johnson_NDVIdif_2.tif")
LaRue_1 = brick("RStudio/NDVI Difference Rasters 2.0/LaRue_NDVIdif_1.tif")
LaRue_2 = brick("RStudio/NDVI Difference Rasters 2.0/LaRue_NDVIdif_2.tif")
LeeMine_1 = brick("RStudio/NDVI Difference Rasters 2.0/LeeMine_NDVIdif_1.tif")
LeeMine_2 = brick("RStudio/NDVI Difference Rasters 2.0/LeeMine_NDVIdif_2.tif")
McConnel1_1 = brick("RStudio/NDVI Difference Rasters 2.0/McConnel1_NDVIdif_1.tif")
McConnel1_2 = brick("RStudio/NDVI Difference Rasters 2.0/McConnel1_NDVIdif_2.tif")
McConnel2_1 = brick("RStudio/NDVI Difference Rasters 2.0/McConnel2_NDVIdif_1.tif")
McConnel2_2 = brick("RStudio/NDVI Difference Rasters 2.0/McCOnnel2_NDVIdif_2.tif")
McConnel3_1 = brick("RStudio/NDVI Difference Rasters 2.0/McConnel3_NDVIdif_1.tif")
McConnel3_2 = brick("RStudio/NDVI Difference Rasters 2.0/McConnel3_NDVIdif_2.tif")
Oakwood_1 = brick("RStudio/NDVI Difference Rasters 2.0/Oakwood_NDVIdif_1.tif")
Oakwood_2 = brick("RStudio/NDVI Difference Rasters 2.0/Oakwood_NDVIdif_2.tif")
Ozark_1 = brick("RStudio/NDVI Difference Rasters 2.0/Ozark_NDVIdif_1.tif")
Ozark_2 = brick("RStudio/NDVI Difference Rasters 2.0/Ozark_NDVIdif_2.tif")
PennantBar1_1 = brick("RStudio/NDVI Difference Rasters 2.0/PennantBar1_NDVIdif_1.tif")
PennantBar1_2 = brick("RStudio/NDVI Difference Rasters 2.0/PennantBar1_NDVIdif_2.tif")
PennantBar2_1 = brick("RStudio/NDVI Difference Rasters 2.0/PennantBar2_NDVIdif_1.tif")
PennantBar2_2 = brick("RStudio/NDVI Difference Rasters 2.0/PennantBar2_NDVIdif_2.tif")
Simpson_1 = brick("RStudio/NDVI Difference Rasters 2.0/Simpson_NDVIdif_1.tif")
Simpson_2 = brick("RStudio/NDVI Difference Rasters 2.0/Simpson_NDVIdif_2.tif")
TPL_1 = brick("RStudio/NDVI Difference Rasters 2.0/TPL_NDVIdif_1.tif")
TPL_2 = brick("RStudio/NDVI Difference Rasters 2.0/TPL_NDVIdif_2.tif")
Turpen_1 = brick("RStudio/NDVI Difference Rasters 2.0/Turpen_NDVIdif_1.tif")
Turpen_2 = brick("RStudio/NDVI Difference Rasters 2.0/Turpen_NDVIdif_2.tif")
West_1 = brick("RStudio/NDVI Difference Rasters 2.0/West_NDVIdif_1.tif")
West_2 = brick("RStudio/NDVI Difference Rasters 2.0/West_NDVIdif_2.tif")
White_1 = brick("RStudio/NDVI Difference Rasters 2.0/White_NDVIdif_1.tif")
White_2 = brick("RStudio/NDVI Difference Rasters 2.0/White_NDVIdif_2.tif")
WhoopieCat_1 = brick("RStudio/NDVI Difference Rasters 2.0/WhoopieCat_NDVIdif_1.tif")
WhoopieCat_2 = brick("RStudio/NDVI Difference Rasters 2.0/WhoopieCat_NDVIdif_2.tif")

###Ashby1### 
Ashby1_Burn_shp = read_sf("Burn Polygons/Ashby1_20180227_Burn.shp")
Ashby1_Bf_shp = read_sf("Buffer Polygons/Ashby1_20180227_Bf.shp")
Ashby1_1_Burn = mask(Ashby1_1, Ashby1_Burn_shp)
Ashby1_1_Bf = mask(Ashby1_1, Ashby1_Bf_shp)
Ashby1_2_Burn = mask(Ashby1_2, Ashby1_Burn_shp)
Ashby1_2_Bf = mask(Ashby1_2, Ashby1_Bf_shp)
Ashby1_1_Burn = cellStats(Ashby1_1_Burn, 'mean')
Ashby1_2_Burn = cellStats(Ashby1_2_Burn, 'mean')
Ashby1_1_Bf = cellStats(Ashby1_1_Bf, 'mean')
Ashby1_2_Bf = cellStats(Ashby1_2_Bf, 'mean')

###Ashby2### 
Ashby2_Burn_shp = read_sf("Burn Polygons/Ashby2_20190225_Burn.shp")
Ashby2_Bf_shp = read_sf("Buffer Polygons/Ashby2_20190225_Bf.shp")
Ashby2_1_Burn = mask(Ashby2_1, Ashby2_Burn_shp)
Ashby2_1_Bf = mask(Ashby2_1, Ashby2_Bf_shp)
Ashby2_2_Burn = mask(Ashby2_2, Ashby2_Burn_shp)
Ashby2_2_Bf = mask(Ashby2_2, Ashby2_Bf_shp)
Ashby2_1_Burn = cellStats(Ashby2_1_Burn, 'mean')
Ashby2_2_Burn = cellStats(Ashby2_2_Burn, 'mean')
Ashby2_1_Bf = cellStats(Ashby2_1_Bf, 'mean')
Ashby2_2_Bf = cellStats(Ashby2_2_Bf, 'mean')

###Bebout### 
Bebout_Burn_shp = read_sf("Burn Polygons/Bebout_20210304_Burn.shp")
Bebout_Bf_shp = read_sf("Buffer Polygons/Bebout_20210304_Bf.shp")
Bebout_1_Burn = mask(Bebout_1, Bebout_Burn_shp)
Bebout_1_Bf = mask(Bebout_1, Bebout_Bf_shp)
Bebout_2_Burn = mask(Bebout_2, Bebout_Burn_shp)
Bebout_2_Bf = mask(Bebout_2, Bebout_Bf_shp)
Bebout_1_Burn = cellStats(Bebout_1_Burn, 'mean')
Bebout_2_Burn = cellStats(Bebout_2_Burn, 'mean')
Bebout_1_Bf = cellStats(Bebout_1_Bf, 'mean')
Bebout_2_Bf = cellStats(Bebout_2_Bf, 'mean')

###Blowdown### 
Blowdown_Burn_shp = read_sf("Burn Polygons/Blowdown_20210123_Burn.shp")
Blowdown_Bf_shp = read_sf("Buffer Polygons/Blowdown_20210123_Bf.shp")
Blowdown_1_Burn = mask(Blowdown_1, Blowdown_Burn_shp)
Blowdown_1_Bf = mask(Blowdown_1, Blowdown_Bf_shp)
Blowdown_2_Burn = mask(Blowdown_2, Blowdown_Burn_shp)
Blowdown_2_Bf = mask(Blowdown_2, Blowdown_Bf_shp)
Blowdown_1_Burn = cellStats(Blowdown_1_Burn, 'mean')
Blowdown_2_Burn = cellStats(Blowdown_2_Burn, 'mean')
Blowdown_1_Bf = cellStats(Blowdown_1_Bf, 'mean')
Blowdown_2_Bf = cellStats(Blowdown_2_Bf, 'mean')

###CedarLake### 
CedarLake_Burn_shp = read_sf("Burn Polygons/CedarLakeKudzu_20171127_Burn.shp")
CedarLake_Bf_shp = read_sf("Buffer Polygons/CedarLakeKudzuBurnUnit_20171127_Bf.shp")
CedarLake_1_Burn = mask(CedarLake_1, CedarLake_Burn_shp)
CedarLake_1_Bf = mask(CedarLake_1, CedarLake_Bf_shp)
CedarLake_2_Burn = mask(CedarLake_2, CedarLake_Burn_shp)
CedarLake_2_Bf = mask(CedarLake_2, CedarLake_Bf_shp)
CedarLake_1_Burn = cellStats(CedarLake_1_Burn, 'mean')
CedarLake_2_Burn = cellStats(CedarLake_2_Burn, 'mean')
CedarLake_1_Bf = cellStats(CedarLake_1_Bf, 'mean')
CedarLake_2_Bf = cellStats(CedarLake_2_Bf, 'mean')

###Dennison### 
Dennison_Burn_shp = read_sf("Burn Polygons/DenHol_20180303_Burn.shp")
Dennison_Bf_shp = read_sf("Buffer Polygons/DennisonHollow_20180303_Bf.shp")
Dennison_1_Burn = mask(Dennison_1, Dennison_Burn_shp)
Dennison_1_Bf = mask(Dennison_1, Dennison_Bf_shp)
Dennison_2_Burn = mask(Dennison_2, Dennison_Burn_shp)
Dennison_2_Bf = mask(Dennison_2, Dennison_Bf_shp)
Dennison_1_Burn = cellStats(Dennison_1_Burn, 'mean')
Dennison_2_Burn = cellStats(Dennison_2_Burn, 'mean')
Dennison_1_Bf = cellStats(Dennison_1_Bf, 'mean')
Dennison_2_Bf = cellStats(Dennison_2_Bf, 'mean')

###Inagheh1### 
Inagheh1_Burn_shp = read_sf("Burn Polygons/Inagheh1_20210122_Burn.shp")
Inagheh1_Bf_shp = read_sf("Buffer Polygons/Inagheh1_20210122_Bf.shp")
Inagheh1_1_Burn = mask(Inagheh1_1, Inagheh1_Burn_shp)
Inagheh1_1_Bf = mask(Inagheh1_1, Inagheh1_Bf_shp)
Inagheh1_2_Burn = mask(Inagheh1_2, Inagheh1_Burn_shp)
Inagheh1_2_Bf = mask(Inagheh1_2, Inagheh1_Bf_shp)
Inagheh1_1_Burn = cellStats(Inagheh1_1_Burn, 'mean')
Inagheh1_2_Burn = cellStats(Inagheh1_2_Burn, 'mean')
Inagheh1_1_Bf = cellStats(Inagheh1_1_Bf, 'mean')
Inagheh1_2_Bf = cellStats(Inagheh1_2_Bf, 'mean')

###Inagheh2### 
Inagheh2_Burn_shp = read_sf("Burn Polygons/Inagheh2_20211108_Burn.shp")
Inagheh2_Bf_shp = read_sf("Buffer Polygons/Inagheh2_20211108_Bf.shp")
Inagheh2_1_Burn = mask(Inagheh2_1, Inagheh2_Burn_shp)
Inagheh2_1_Bf = mask(Inagheh2_1, Inagheh2_Bf_shp)
Inagheh2_2_Burn = mask(Inagheh2_2, Inagheh2_Burn_shp)
Inagheh2_2_Bf = mask(Inagheh2_2, Inagheh2_Bf_shp)
Inagheh2_1_Burn = cellStats(Inagheh2_1_Burn, 'mean')
Inagheh2_2_Burn = cellStats(Inagheh2_2_Burn, 'mean')
Inagheh2_1_Bf = cellStats(Inagheh2_1_Bf, 'mean')
Inagheh2_2_Bf = cellStats(Inagheh2_2_Bf, 'mean')

###Johnson### 
Johnson_Burn_shp = read_sf("Burn Polygons/JohnsonCo_20170222_Burn.shp")
Johnson_Bf_shp = read_sf("Buffer Polygons/JohnsonCo_20170222_Bf.shp")
Johnson_1_Burn = mask(Johnson_1, Johnson_Burn_shp)
Johnson_1_Bf = mask(Johnson_1, Johnson_Bf_shp)
Johnson_2_Burn = mask(Johnson_2, Johnson_Burn_shp)
Johnson_2_Bf = mask(Johnson_2, Johnson_Bf_shp)
Johnson_1_Burn = cellStats(Johnson_1_Burn, 'mean')
Johnson_2_Burn = cellStats(Johnson_2_Burn, 'mean')
Johnson_1_Bf = cellStats(Johnson_1_Bf, 'mean')
Johnson_2_Bf = cellStats(Johnson_2_Bf, 'mean')

###LaRue### 
LaRue_Burn_shp = read_sf("Burn Polygons/LaRuePineHills_20170308_Burn.shp")
LaRue_Bf_shp = read_sf("Buffer Polygons/LaRuePineHills_20170308_Bf.shp")
LaRue_1_Burn = mask(LaRue_1, LaRue_Burn_shp)
LaRue_1_Bf = mask(LaRue_1, LaRue_Bf_shp)
LaRue_2_Burn = mask(LaRue_2, LaRue_Burn_shp)
LaRue_2_Bf = mask(LaRue_2, LaRue_Bf_shp)
LaRue_1_Burn = cellStats(LaRue_1_Burn, 'mean')
LaRue_2_Burn = cellStats(LaRue_2_Burn, 'mean')
LaRue_1_Bf = cellStats(LaRue_1_Bf, 'mean')
LaRue_2_Bf = cellStats(LaRue_2_Bf, 'mean')

###LeeMine### 
LeeMine_Burn_shp = read_sf("Burn Polygons/LeeMine_20200229_Burn.shp")
LeeMine_Bf_shp = read_sf("Buffer Polygons/LeeMine_20200229_Bf.shp")
LeeMine_1_Burn = mask(LeeMine_1, LeeMine_Burn_shp)
LeeMine_1_Bf = mask(LeeMine_1, LeeMine_Bf_shp)
LeeMine_2_Burn = mask(LeeMine_2, LeeMine_Burn_shp)
LeeMine_2_Bf = mask(LeeMine_2, LeeMine_Bf_shp)
LeeMine_1_Burn = cellStats(LeeMine_1_Burn, 'mean')
LeeMine_2_Burn = cellStats(LeeMine_2_Burn, 'mean')
LeeMine_1_Bf = cellStats(LeeMine_1_Bf, 'mean')
LeeMine_2_Bf = cellStats(LeeMine_2_Bf, 'mean')

###McConnel1### 
McConnel1_Burn_shp = read_sf("Burn Polygons/McConnel1_20180308_Burn.shp")
McConnel1_Bf_shp = read_sf("Buffer Polygons/McConnel1_20180308_Bf.shp")
McConnel1_1_Burn = mask(McConnel1_1, McConnel1_Burn_shp)
McConnel1_1_Bf = mask(McConnel1_1, McConnel1_Bf_shp)
McConnel1_2_Burn = mask(McConnel1_2, McConnel1_Burn_shp)
McConnel1_2_Bf = mask(McConnel1_2, McConnel1_Bf_shp)
McConnel1_1_Burn = cellStats(McConnel1_1_Burn, 'mean')
McConnel1_2_Burn = cellStats(McConnel1_2_Burn, 'mean')
McConnel1_1_Bf = cellStats(McConnel1_1_Bf, 'mean')
McConnel1_2_Bf = cellStats(McConnel1_2_Bf, 'mean')

###McConnel2### 
McConnel2_Burn_shp = read_sf("Burn Polygons/McConnel2_20200306_Burn.shp")
McConnel2_Bf_shp = read_sf("Buffer Polygons/McConnel2_20200306_Bf.shp")
McConnel2_1_Burn = mask(McConnel2_1, McConnel2_Burn_shp)
McConnel2_1_Bf = mask(McConnel2_1, McConnel2_Bf_shp)
McConnel2_2_Burn = mask(McConnel2_2, McConnel2_Burn_shp)
McConnel2_2_Bf = mask(McConnel2_2, McConnel2_Bf_shp)
McConnel2_1_Burn = cellStats(McConnel2_1_Burn, 'mean')
McConnel2_2_Burn = cellStats(McConnel2_2_Burn, 'mean')
McConnel2_1_Bf = cellStats(McConnel2_1_Bf, 'mean')
McConnel2_2_Bf = cellStats(McConnel2_2_Bf, 'mean')

###McConnel3### 
McConnel3_Burn_shp = read_sf("Burn Polygons/McConnel3_20201113_Burn.shp")
McConnel3_Bf_shp = read_sf("Buffer Polygons/McConnel3_20201113_Bf.shp")
McConnel3_1_Burn = mask(McConnel3_1, McConnel3_Burn_shp)
McConnel3_1_Bf = mask(McConnel3_1, McConnel3_Bf_shp)
McConnel3_2_Burn = mask(McConnel3_2, McConnel3_Burn_shp)
McConnel3_2_Bf = mask(McConnel3_2, McConnel3_Bf_shp)
McConnel3_1_Burn = cellStats(McConnel3_1_Burn, 'mean')
McConnel3_2_Burn = cellStats(McConnel3_2_Burn, 'mean')
McConnel3_1_Bf = cellStats(McConnel3_1_Bf, 'mean')
McConnel3_2_Bf = cellStats(McConnel3_2_Bf, 'mean')

###Oakwood### 
Oakwood_Burn_shp = read_sf("Burn Polygons/Oakwood_20201109_Burn.shp")
Oakwood_Bf_shp = read_sf("Buffer Polygons/Oakwood_20201109_Bf.shp")
Oakwood_1_Burn = mask(Oakwood_1, Oakwood_Burn_shp)
Oakwood_1_Bf = mask(Oakwood_1, Oakwood_Bf_shp)
Oakwood_2_Burn = mask(Oakwood_2, Oakwood_Burn_shp)
Oakwood_2_Bf = mask(Oakwood_2, Oakwood_Bf_shp)
Oakwood_1_Burn = cellStats(Oakwood_1_Burn, 'mean')
Oakwood_2_Burn = cellStats(Oakwood_2_Burn, 'mean')
Oakwood_1_Bf = cellStats(Oakwood_1_Bf, 'mean')
Oakwood_2_Bf = cellStats(Oakwood_2_Bf, 'mean')

###Ozark### 
Ozark_Burn_shp = read_sf("Burn Polygons/OzarkHill_20170304_Burn.shp")
Ozark_Bf_shp = read_sf("Buffer Polygons/OzarkHill_20170304_Bf.shp")
Ozark_1_Burn = mask(Ozark_1, Ozark_Burn_shp)
Ozark_1_Bf = mask(Ozark_1, Ozark_Bf_shp)
Ozark_2_Burn = mask(Ozark_2, Ozark_Burn_shp)
Ozark_2_Bf = mask(Ozark_2, Ozark_Bf_shp)
Ozark_1_Burn = cellStats(Ozark_1_Burn, 'mean')
Ozark_2_Burn = cellStats(Ozark_2_Burn, 'mean')
Ozark_1_Bf = cellStats(Ozark_1_Bf, 'mean')
Ozark_2_Bf = cellStats(Ozark_2_Bf, 'mean')

###PennantBar1### 
PennantBar1_Burn_shp = read_sf("Burn Polygons/PennantBar1_20170215_Burn.shp")
PennantBar1_Bf_shp = read_sf("Buffer Polygons/PennantBar1_20170215_Bf.shp")
PennantBar1_1_Burn = mask(PennantBar1_1, PennantBar1_Burn_shp)
PennantBar1_1_Bf = mask(PennantBar1_1, PennantBar1_Bf_shp)
PennantBar1_2_Burn = mask(PennantBar1_2, PennantBar1_Burn_shp)
PennantBar1_2_Bf = mask(PennantBar1_2, PennantBar1_Bf_shp)
PennantBar1_1_Burn = cellStats(PennantBar1_1_Burn, 'mean')
PennantBar1_2_Burn = cellStats(PennantBar1_2_Burn, 'mean')
PennantBar1_1_Bf = cellStats(PennantBar1_1_Bf, 'mean')
PennantBar1_2_Bf = cellStats(PennantBar1_2_Bf, 'mean')

###PennantBar2### 
PennantBar2_Burn_shp = read_sf("Burn Polygons/PennantBar2_20180309_Burn.shp")
PennantBar2_Bf_shp = read_sf("Buffer Polygons/PennantBar2_20180309_Bf.shp")
PennantBar2_1_Burn = mask(PennantBar2_1, PennantBar2_Burn_shp)
PennantBar2_1_Bf = mask(PennantBar2_1, PennantBar2_Bf_shp)
PennantBar2_2_Burn = mask(PennantBar2_2, PennantBar2_Burn_shp)
PennantBar2_2_Bf = mask(PennantBar2_2, PennantBar2_Bf_shp)
PennantBar2_1_Burn = cellStats(PennantBar2_1_Burn, 'mean')
PennantBar2_2_Burn = cellStats(PennantBar2_2_Burn, 'mean')
PennantBar2_1_Bf = cellStats(PennantBar2_1_Bf, 'mean')
PennantBar2_2_Bf = cellStats(PennantBar2_2_Bf, 'mean')

###Simpson### 
Simpson_Burn_shp = read_sf("Burn Polygons/SimpsonTownshipBarrens_PVT_20200307_Burn.shp")
Simpson_Bf_shp = read_sf("Buffer Polygons/SimpsonTownshipBarrens_PVT_20200307_Bf.shp")
Simpson_1_Burn = mask(Simpson_1, Simpson_Burn_shp)
Simpson_1_Bf = mask(Simpson_1, Simpson_Bf_shp)
Simpson_2_Burn = mask(Simpson_2, Simpson_Burn_shp)
Simpson_2_Bf = mask(Simpson_2, Simpson_Bf_shp)
Simpson_1_Burn = cellStats(Simpson_1_Burn, 'mean')
Simpson_2_Burn = cellStats(Simpson_2_Burn, 'mean')
Simpson_1_Bf = cellStats(Simpson_1_Bf, 'mean')
Simpson_2_Bf = cellStats(Simpson_2_Bf, 'mean')

###TPL### 
TPL_Burn_shp = read_sf("Burn Polygons/TPL_20200222_Burn.shp")
TPL_Bf_shp = read_sf("Buffer Polygons/TPL_20200222_Bf.shp")
TPL_1_Burn = mask(TPL_1, TPL_Burn_shp)
TPL_1_Bf = mask(TPL_1, TPL_Bf_shp)
TPL_2_Burn = mask(TPL_2, TPL_Burn_shp)
TPL_2_Bf = mask(TPL_2, TPL_Bf_shp)
TPL_1_Burn = cellStats(TPL_1_Burn, 'mean')
TPL_2_Burn = cellStats(TPL_2_Burn, 'mean')
TPL_1_Bf = cellStats(TPL_1_Bf, 'mean')
TPL_2_Bf = cellStats(TPL_2_Bf, 'mean')

###Turpen### 
Turpen_Burn_shp = read_sf("Burn Polygons/Turpen_20161107_Burn.shp")
Turpen_Bf_shp = read_sf("Buffer Polygons/Turpen_20161107_Bf.shp")
Turpen_1_Burn = mask(Turpen_1, Turpen_Burn_shp)
Turpen_1_Bf = mask(Turpen_1, Turpen_Bf_shp)
Turpen_2_Burn = mask(Turpen_2, Turpen_Burn_shp)
Turpen_2_Bf = mask(Turpen_2, Turpen_Bf_shp)
Turpen_1_Burn = cellStats(Turpen_1_Burn, 'mean')
Turpen_2_Burn = cellStats(Turpen_2_Burn, 'mean')
Turpen_1_Bf = cellStats(Turpen_1_Bf, 'mean')
Turpen_2_Bf = cellStats(Turpen_2_Bf, 'mean')

###West### 
West_Burn_shp = read_sf("Burn Polygons/West_20171214_Burn.shp")
West_Bf_shp = read_sf("Buffer Polygons/West_20171214_Bf.shp")
West_1_Burn = mask(West_1, West_Burn_shp)
West_1_Bf = mask(West_1, West_Bf_shp)
West_2_Burn = mask(West_2, West_Burn_shp)
West_2_Bf = mask(West_2, West_Bf_shp)
West_1_Burn = cellStats(West_1_Burn, 'mean')
West_2_Burn = cellStats(West_2_Burn, 'mean')
West_1_Bf = cellStats(West_1_Bf, 'mean')
West_2_Bf = cellStats(West_2_Bf, 'mean')

###White### 
White_Burn_shp = read_sf("Burn Polygons/White_20180304_Burn.shp")
White_Bf_shp = read_sf("Buffer Polygons/White_20180304_Bf.shp")
White_1_Burn = mask(White_1, White_Burn_shp)
White_1_Bf = mask(White_1, White_Bf_shp)
White_2_Burn = mask(White_2, White_Burn_shp)
White_2_Bf = mask(White_2, White_Bf_shp)
White_1_Burn = cellStats(White_1_Burn, 'mean')
White_2_Burn = cellStats(White_2_Burn, 'mean')
White_1_Bf = cellStats(White_1_Bf, 'mean')
White_2_Bf = cellStats(White_2_Bf, 'mean')

###WhoopieCat### 
WhoopieCat_Burn_shp = read_sf("Burn Polygons/WhoopieCat_20200308_Burn.shp")
WhoopieCat_Bf_shp = read_sf("Buffer Polygons/WhoopieCat_20200308_Bf.shp")
WhoopieCat_1_Burn = mask(WhoopieCat_1, WhoopieCat_Burn_shp)
WhoopieCat_1_Bf = mask(WhoopieCat_1, WhoopieCat_Bf_shp)
WhoopieCat_2_Burn = mask(WhoopieCat_2, WhoopieCat_Burn_shp)
WhoopieCat_2_Bf = mask(WhoopieCat_2, WhoopieCat_Bf_shp)
WhoopieCat_1_Burn = cellStats(WhoopieCat_1_Burn, 'mean')
WhoopieCat_2_Burn = cellStats(WhoopieCat_2_Burn, 'mean')
WhoopieCat_1_Bf = cellStats(WhoopieCat_1_Bf, 'mean')
WhoopieCat_2_Bf = cellStats(WhoopieCat_2_Bf, 'mean')

####All Fires####

#Select data
Burn_1_means = c(
  Ashby1_1_Burn,
  Ashby2_1_Burn,
  Bebout_1_Burn,
  Blowdown_1_Burn,
  CedarLake_1_Burn,
  Dennison_1_Burn,
  Inagheh1_1_Burn,
  Inagheh2_1_Burn,
  Johnson_1_Burn,
  LaRue_1_Burn,
  LeeMine_1_Burn,
  McConnel1_1_Burn,
  McConnel2_1_Burn,
  McConnel3_1_Burn,
  Oakwood_1_Burn,
  Ozark_1_Burn,
  PennantBar1_1_Burn,
  PennantBar2_1_Burn,
  TPL_1_Burn,
  Turpen_1_Burn,
  Simpson_1_Burn,
  West_1_Burn,
  White_1_Burn,
  WhoopieCat_1_Burn)

Burn_2_means = c(
  Ashby1_2_Burn,
  Ashby2_2_Burn,
  #Bebout_2_Burn,
  Blowdown_2_Burn,
  CedarLake_2_Burn,
  Dennison_2_Burn,
  Inagheh1_2_Burn,
  Inagheh2_2_Burn,
  Johnson_2_Burn,
  LaRue_2_Burn,
  LeeMine_2_Burn,
  McConnel1_2_Burn,
  McConnel2_2_Burn,
  McConnel3_2_Burn,
  Oakwood_2_Burn,
  Ozark_2_Burn,
  PennantBar1_2_Burn,
  PennantBar2_2_Burn,
  TPL_2_Burn,
  Turpen_2_Burn,
  Simpson_2_Burn,
  West_2_Burn,
  White_2_Burn,
  WhoopieCat_2_Burn)

Bf_1_means = c(
  Ashby1_1_Bf,
  Ashby2_1_Bf,
  Bebout_1_Bf,
  Blowdown_1_Bf,
  CedarLake_1_Bf,
  Dennison_1_Bf,
  Inagheh1_1_Bf,
  Inagheh2_1_Bf,
  Johnson_1_Bf,
  LaRue_1_Bf,
  LeeMine_1_Bf,
  McConnel1_1_Bf,
  McConnel2_1_Bf,
  McConnel3_1_Bf,
  Oakwood_1_Bf,
  Ozark_1_Bf,
  PennantBar1_1_Bf,
  PennantBar2_1_Bf,
  TPL_1_Bf,
  Turpen_1_Bf,
  Simpson_1_Bf,
  West_1_Bf,
  White_1_Bf,
  WhoopieCat_1_Bf)

Bf_2_means = c(
  Ashby1_2_Bf,
  Ashby2_2_Bf,
  Bebout_2_Bf,
  Blowdown_2_Bf,
  CedarLake_2_Bf,
  Dennison_2_Bf,
  Inagheh1_2_Bf,
  Inagheh2_2_Bf,
  Johnson_2_Bf,
  LaRue_2_Bf,
  LeeMine_2_Bf,
  McConnel1_2_Bf,
  McConnel2_2_Bf,
  McConnel3_2_Bf,
  Oakwood_2_Bf,
  Ozark_2_Bf,
  PennantBar1_2_Bf,
  PennantBar2_2_Bf,
  TPL_2_Bf,
  Turpen_2_Bf,
  Simpson_2_Bf,
  West_2_Bf,
  White_2_Bf,
  WhoopieCat_2_Bf)

#Plot Data
data <- data.frame(
  value = c(Burn_1_means, Bf_1_means, Burn_2_means, Bf_2_means),
  group = factor(rep(c("Initial Burns", "Initial Buffers", "Recovered Burns", "Recovered Buffers"), 
                     c(length(Burn_1_means), length(Bf_1_means), length(Burn_2_means), length(Bf_2_means))))
)
print(data)
p <- ggplot(data,aes(x=group,y=value,fill=value))+
  geom_violin(trim = T)

mywidth <- .45 
vl_fill <- data.frame(ggplot_build(p)$data) %>%
  mutate(xnew = x- mywidth*violinwidth, xend = x+ mywidth*violinwidth) 
vl_poly <- 
  vl_fill %>% 
  select(xnew, xend, y, group) %>%
  pivot_longer(-c(y, group), names_to = "oldx", values_to = "x") %>% 
  arrange(y) %>%
  split(., .$oldx) %>%
  map(., function(x) {
    if(all(x$oldx == "xnew")) x <- arrange(x, desc(y))
    x
  }) %>%
  bind_rows()
LabelPlot = ggplot() + 
  geom_segment(data = vl_fill, aes(x = xnew, xend = xend, y = y, yend = y,
                                   color = "transparent",))  +
  geom_boxplot(width=.1) +
  geom_violin(data = data, aes(x = as.integer(group), y = value, fill = group),
              fill = "transparent", color = "black", 
              show.legend = FALSE, trim = TRUE) +
  theme(legend.position = "none") +
  labs(x = "Analysis Period", y = "∆NDVI (%)") +
  scale_x_continuous(
    breaks = c(1, 2, 3, 4),               # Specify x-axis positions
    labels = c(expression("Unburned-T"[0]), expression("Burned-T"[0]), expression("Unburned-T"[1]), expression("Burned-T"[1]))  # Custom labels
  )
plot(LabelPlot)