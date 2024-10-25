# docker_volume_menu-dropdown
A Bash script menu for managing files and tools in a Docker volume.

# Docker Volume Menu Dropdown

This repository contains a simple Bash script that helps manage files and tools within a Docker container using a persistent data volume.

## Use Case

The script allows users to:
- Create new directories within the `/data` volume.
- List files and subdirectories.
- Install tools in the `/data/tools` directory.
- Ensure important files are saved in the persistent `/data` volume.

### How to Use

1. Run the script.
2. Follow the menu options to perform various tasks.
3. Remember to save your important files in the `/data` directory to persist them across container runs.

## Installation

Make sure you have Docker installed and set up on your machine.

1. Clone this repository.
2. Make the script executable: `chmod +x menu_script.sh`
3. Run the script: `./menu_script.sh`
