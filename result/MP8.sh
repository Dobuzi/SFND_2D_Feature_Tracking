#!/bin/bash

echo "SHITOMASI_BRISK_MAT_BF" > MP8_SHITOMASI_BRISK_MAT_BF.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector SHITOMASI \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_SHITOMASI_BRISK_MAT_BF.csv

echo "SHITOMASI_BRIEF_MAT_BF" > MP8_SHITOMASI_BRIEF_MAT_BF.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector SHITOMASI \
--descriptor BRIEF \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_SHITOMASI_BRIEF_MAT_BF.csv

echo "FAST_BRISK_MAT_BF" > MP8_FAST_BRISK_MAT_BF.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector FAST \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_FAST_BRISK_MAT_BF.csv

echo "FAST_FREAK_MAT_BF" > MP8_FAST_FREAK_MAT_BF.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector FAST \
--descriptor FREAK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_FAST_FREAK_MAT_BF.csv

echo "BRISK_BRISK_MAT_BF" > MP8_BRISK_BRISK_MAT_BF.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector BRISK \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_BRISK_BRISK_MAT_BF.csv

echo "BRISK_BRISK_MAT_FLANN" > MP8_BRISK_BRISK_MAT_FLANN.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector BRISK \
--descriptor BRISK \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_BRISK_BRISK_MAT_FLANN.csv

echo "BRISK_BRIEF_MAT_FLANN" > MP8_BRISK_BRIEF_MAT_FLANN.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector BRISK \
--descriptor BRIEF \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_BRISK_BRIEF_MAT_FLANN.csv

echo "ORB_FREAK_MAT_FLANN" > MP8_ORB_FREAK_MAT_FLANN.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector ORB \
--descriptor FREAK \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_ORB_FREAK_MAT_FLANN.csv

echo "ORB_ORB_MAT_BF" > MP8_ORB_BRISK_MAT_BF.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector ORB \
--descriptor ORB \
--matcher MAT_BF \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_ORB_BRISK_MAT_BF.csv

echo "ORB_ORB_MAT_FLANN" > MP8_ORB_BRISK_MAT_FLANN.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector ORB \
--descriptor ORB \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_ORB_BRISK_MAT_FLANN.csv

echo "AKAZE_AKAZE_MAT_FLANN" > MP8_AKAZE_AKAZE_MAT_FLANN.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector AKAZE \
--descriptor AKAZE \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_AKAZE_AKAZE_MAT_FLANN.csv

echo "SIFT_SIFT_MAT_FLANN" > MP8_SIFT_SIFT_MAT_FLANN.csv
../build/2D_feature_tracking --bVisMatcher false \
--detector SIFT \
--descriptor SIFT \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep MP8 | awk '{print $1}' >> MP8_SIFT_SIFT_MAT_FLANN.csv

./mergecsv.pl MP8_*.csv > result_MP8.csv
rm MP8_*.csv