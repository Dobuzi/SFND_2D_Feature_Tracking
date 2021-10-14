#!/bin/bash

echo "SHITOMASI" > kpts_SHITOMASI.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector SHITOMASI \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep preceding | awk '{print $1}' >> kpts_SHITOMASI.csv

echo "FAST" > kpts_FAST.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector FAST \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep preceding | awk '{print $1}' >> kpts_FAST.csv

echo "BRISK" > kpts_BRISK.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector BRISK \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep preceding | awk '{print $1}' >> kpts_BRISK.csv

echo "ORB" > kpts_ORB.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector ORB \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep preceding | awk '{print $1}' >> kpts_ORB.csv

echo "AKAZE" > kpts_AKAZE.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector AKAZE \
--descriptor AKAZE \
--matcher MAT_BF \
--selector SEL_KNN \
| grep preceding | awk '{print $1}' >> kpts_AKAZE.csv

echo "SIFT" > kpts_SIFT.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector SIFT \
--descriptor SIFT \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep preceding | awk '{print $1}' >> kpts_SIFT.csv

./mergecsv.pl kpts_*.csv > result_kpts.csv
rm kpts_*.csv