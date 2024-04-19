#!/bin/bash
# Array of file keys
file_keys=(glass_platform lily_flower white_platform_v1 white_platform_v1 stone_platform wood_snow wooden_shelf_final pure_palette_final Wooden_Podium wooden_platform water_wood marble_bird_eye)
# Download files from S3
for key in "${file_keys[@]}"; do
    aws s3 cp "s3://unstudio-product-photoshoots/dataset/Lora-Categories/$key" "./data/min" --recursive
done

# Run main.py (replace 'main.py' with the actual name of your Python script)
# pip install -r requirements.txt
python caption.py

