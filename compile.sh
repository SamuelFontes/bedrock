#!/bin/bash
# Check if it's WSL or regular distro
WSLFILE=/proc/sys/fs/binfmt_misc/WSLInterop
if [ -f "$WSLFILE" ]; then
	echo "File '$WSLFILEFile' exists. Compilling to WSL."
	cl65 main.asm --verbose --target nes -o /mnt/c/tools/fceux/game/bedrock.nes
	echo "Rom compiled to c/tools/fceux/game/bedrock.nes"
else
	echo "File '$WSLFILE' does not exist so it's not WSL. Compilling it to 'build' folder."
	cl65 main.asm --verbose --target nes -o build/bedrock.nes
	echo "Rom compiled to build/bedrock.nes folder."
fi
