# Use a base image with wget installed, like Debian
FROM debian:latest

# Install wget
RUN apt-get update && apt-get install -y wget

# Create a directory for the llamafile-server binary
WORKDIR /llamafile-server

# Copy a script to download and prepare the binary
COPY download_script.sh /llamafile-server

# Make the script executable
RUN chmod +x /llamafile-server/download_script.sh

# Expose the port the server will run on
EXPOSE 8080

# Define the entrypoint script
ENTRYPOINT ["./download_script.sh"]

