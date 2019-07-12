
# List the currently created volumes
docker volume ls

# Create a new volume called data1
docker volume create data1

# Display detailed information about the data1 volume
docker volume inspect data1

# Run a new container interactively and mount the data1 volume to it
docker run -it --name test1 --mount source=data1,destination=c:\data1 2c40364c3959 powershell

# Create a new file in the Data1 folder inside the container
New-Item C:\data1\Test2.txt -ItemType File

# Mount the data1 volume to a second container
docker run -it --name test2 --mount source=data1,destination=c:\data1 2c40364c3959 powershell

# Remove the data1 container
docker volume rm data1

# Remove all unused local volumes
docker volume prune
