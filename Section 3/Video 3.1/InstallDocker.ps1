
# Install the Docker Provider
Install-Module DockerMSFTProvider -Force

# Install Docker from the Docker Provider
Install-Package -Name docker -ProviderName DockerMSFTProvider -Force

# Restart the computer to enable the Containers feature
Restart-computer

# Get the Docker Service
Get-Service Docker

# Start the Docker Service
Start-Service Docker

# Get the Docker version information to verify the installation
docker version
