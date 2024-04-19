#!/bin/bash
# Array of file keys
file_keys=(chill_ice_v1)
# Download files from S3
for key in "${file_keys[@]}"; do
    aws s3 cp "s3://unstudio-product-photoshoots/dataset/Lora-Categories/$key" "./data/$key" --recursive
done

# Run main.py (replace 'main.py' with the actual name of your Python script)
pip install -r requirements.txt
python caption.py

