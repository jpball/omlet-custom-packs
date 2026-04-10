#!/bin/bash

RES_PACK_PATH_DEV="/home/jordan/Dev/minecraft/omlet-server-dp/Omlet_ResourcePack"
DATA_PACK_PATH_DEV="/home/jordan/Dev/minecraft/omlet-server-dp/Omlet_Datapack"

RES_PACK_PATH_PROD="/home/jordan/Documents/curseforge/minecraft/Instances/Artificial Vanilla 6/resourcepacks/"
DATA_PACK_PATH_PROD="/home/jordan/Documents/curseforge/minecraft/Instances/Artificial Vanilla 6/saves/Build/datapacks/"


# Copy dev directories to prod directories
cp -r "$RES_PACK_PATH_DEV" "$RES_PACK_PATH_PROD"
cp -r "$DATA_PACK_PATH_DEV" "$DATA_PACK_PATH_PROD"
echo "Resource packs and data packs have been reloaded from development to production directories."