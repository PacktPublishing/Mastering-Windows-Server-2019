
# List the available container images
docker images

# Pull the latest Windows 2019 IIS Container Image
docker pull mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019

# Run the Server Core image using the image name and tag
docker run mcr.microsoft.com/windows/servercore:ltsc2019

# # Run the Server Core image using the Image ID
docker run 2c40364c3959

# Run the Server Core image using the first 3 characters of the Image ID
docker run 2c4

# List running containers
docker ps

# List all running and stopped containers
docker ps -a

# Inspect the Server Core 2019 image to look at the Entrypoint
docker inspect 2c40364c3959

# Inspect the IIS 2019 image to look at the Entrypoint
docker inspect 4e080974983f

# Run the IIS container image in the background
docker run -d 4e080974983f

# Run the IIS container image in the background specifying a name
docker run -d --name web 4e080974983f

# Stop a running container
docker stop <container>

# Remove a stopped container
docker container rm <container>

# Remove all stopped containers
docker container prune