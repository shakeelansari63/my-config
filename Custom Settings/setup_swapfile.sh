# Set Output
set -x

# Define Swapfile
swapfl=${PWD}/swapfile

# Change swapfile to be accessed by root only
sudo chown root:root $swapfl
sudo chmod 600 $swapfl

# Make swap partition
sudo mkswap $swapfl

# Switch on Swap for swapfile
sudo swapon $swapfl

# Add Swapfile to FSTAB
echo "${PWD}/swapfile    swap    swap    defaults    0  0"
echo "${PWD}/swapfile    swap    swap    defaults    0  0" | sudo tee -a /etc/fstab
