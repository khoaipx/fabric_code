#!/bin/bash
mkdir -p ../data/fabric/defect_Images
mkdir -p ../data/fabric/template_Images
mkdir -p ../data/fabric/annotations
mkdir -p ../data/fabric/Annotations
mkdir -p ../data/pretrained
cp ../data/guangdong1_round2_train_part1_20190924/defect/*/*.jpg ../data/fabric/defect_Images/
wait
rm ../data/fabric/defect_Images/template*
cp -r ../data/guangdong1_round2_train_part1_20190924/defect/* ../data/fabric/template_Images/
wait
cp ../data/guangdong1_round2_train_part1_20190924/Annotations/anno_train.json ../data/fabric/Annotations/anno_train_round2.json

python guangdong_round2.py
python guangdong_round2_100.py
