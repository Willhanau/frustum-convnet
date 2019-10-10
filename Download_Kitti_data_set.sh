#!/bin/bash
#Description: Downloads the required data from the kitti dataset.

# calib
wget https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_calib.zip
unzip -q data_object_calib.zip

# image_2
wget https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_image_2.zip
unzip -q data_object_image_2.zip

# velodyne
wget https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_velodyne.zip
unzip -q data_object_velodyne.zip

# training labels
wget https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_label_2.zip
unzip -q data_object_label_2.zip

# delete .zip files
rm data_object_calib.zip
rm data_object_image_2.zip
rm data_object_velodyne.zip
rm data_object_label_2.zip

# create expected kitti folder layout
mkdir kitti
mv testing/ kitti/
mv training kitti/
