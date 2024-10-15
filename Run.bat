#!/bin/bash

# Clone the repository from SrvDoom
REPO_URL="https://github.com/Alpha30811/SrvDoom.git"
CLONE_DIR="minecraft_server"

# Check if the directory already exists
if [ -d "$CLONE_DIR" ]; then
    echo "Directory $CLONE_DIR already exists. Pulling latest changes..."
    cd "$CLONE_DIR" && git pull
else
    echo "Cloning repository from $REPO_URL..."
    git clone "$REPO_URL" "$CLONE_DIR"
    cd "$CLONE_DIR"
fi

# Run the Minecraft server
# Assuming the Minecraft server is included in the cloned repo or available in the directory
# You need to adjust the server .jar path or any start scripts accordingly

echo "Starting Minecraft server..."
java -Xmx1024M -Xms1024M -jar server.jar nogui

# Optionally, if you have a script to run the server, you can replace the line above with:
# ./start.sh
