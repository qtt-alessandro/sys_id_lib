#!/bin/bash

# Set environment name and repository
ENV_NAME="sys_id_module"

# Step 1: Create a Conda environment
echo "Creating Conda environment..."
conda create -n $ENV_NAME python=3.9 -y

# Step 2: Activate the environment
echo "Activating the environment..."
source activate $ENV_NAME

echo "Installing dependencies..."
pip install --no-cache-dir -r requirements.txt

echo "Installing SIPPY..."
python setup.py install 
