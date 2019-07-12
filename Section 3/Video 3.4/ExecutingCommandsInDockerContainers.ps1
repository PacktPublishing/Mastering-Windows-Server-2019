

# Run the hostname command on the server core container image
docker run 2c4 hostname

# Run the IIS container image in the background with the name "web"
docker run -d --name web 4e0

# Execute the ipconfig command against the running IIS container
docker exec web ipconfig

# Run PowerShell interactively inside the IIS container
docker exec -it web Powershell

# Create a new index.htm file for the web server on the IIS container
New-Item -Name index.htm -ItemType File -Value 'Windows Server 2019 Container'