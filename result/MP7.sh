#!/bin/bash

echo "SHITOMASI" > MP7_SHITOMASI.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector SHITOMASI \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP7 | awk '{print $1}' >> MP7_SHITOMASI.csv

echo "FAST" > MP7_FAST.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector FAST \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP7 | awk '{print $1}' >> MP7_FAST.csv

echo "BRISK" > MP7_BRISK.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector BRISK \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP7 | awk '{print $1}' >> MP7_BRISK.csv

echo "ORB" > MP7_ORB.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector ORB \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP7 | awk '{print $1}' >> MP7_ORB.csv

echo "AKAZE" > MP7_AKAZE.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector AKAZE \
--descriptor AKAZE \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP7 | awk '{print $1}' >> MP7_AKAZE.csv

echo "SIFT" > MP7_SIFT.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector SIFT \
--descriptor SIFT \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep MP7 | awk '{print $1}' >> MP7_SIFT.csv

./mergecsv.pl MP7_*.csv > result_MP7.csv
rm MP7_*.csv