#!/bin/bash

if [ -f "./hytale-downloader-linux-amd64" ]; then
    echo "hytale-downloader already installed !" 
else
    echo "Installation of hytale-downloader..."
    wget https://downloader.hytale.com/hytale-downloader.zip
    unzip hytale-downloader.zip
    chmod +x hytale-downloader-linux-amd64

    rm -r hytale-downloader-windows-amd64.exe
    rm -r hytale-downloader.zip
fi

echo "Checking for updates..."
./hytale-downloader-linux-amd64 -check-update

if [ -d "./Server" ]; then
    echo "Server already Installed !"
else 
    echo "Download latest release..."
    ./hytale-downloader-linux-amd64 -download-path ./assets
    unzip assets.zip
fi

cd Server/

echo "Starting..."
java --version
java -jar HytaleServer.jar --assets ./assets
