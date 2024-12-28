#!/bin/bash

# Step 1: Download & Unzip
echo "Step 1: Downloading and extracting the application..."
curl -o apphub-linux-amd64.tar.gz https://assets.coreservice.io/public/package/60/app-market-gaga-pro/1.0.4/app-market-gaga-pro-1_0_4.tar.gz || { echo "Failed to download the application"; exit 1; }
tar -zxf apphub-linux-amd64.tar.gz || { echo "Failed to extract the application"; exit 1; }
rm -f apphub-linux-amd64.tar.gz || { echo "Failed to remove the downloaded file"; exit 1; }
cd ./apphub-linux-amd64 || { echo "Failed to navigate to the application directory"; exit 1; }

# Step 2: Remove existing service and install new service
echo "Step 2: Removing existing service and installing a new service..."
sudo ./apphub service remove || { echo "Failed to remove existing service"; exit 1; }
sudo ./apphub service install || { echo "Failed to install new service"; exit 1; }

# Step 3: Set token
echo "Step 3: Setting the token..."
sudo ./apps/gaganode/gaganode config set --token=nrkvkyuzxuchrteca2ac974877f9c2dc || { echo "Failed to set the token"; exit 1; }

# Step 4: Restart the service
echo "Step 4: Restarting the service..."
sudo ./apphub restart || { echo "Failed to restart the service"; exit 1; }

# Step 5: Start the service
echo "Step 5: Starting the service..."
sudo ./apphub service start || { echo "Failed to start the service"; exit 1; }

# Step 6: Check app status
echo "Step 6: Checking application status..."
status_output=$(./apphub status)
echo "$status_output"

# Verify that gaganode status is 'RUNNING'
if echo "$status_output" | grep -q "gaganode.*RUNNING"; then
    echo "gaganode is RUNNING."
else
    echo "gaganode is NOT RUNNING. Checking logs..."
    sudo ./apps/gaganode/gaganode log
    exit 1
fi

echo "Setup completed successfully!"
echo "For more tutorials, check https://docs.gaganode.com"
