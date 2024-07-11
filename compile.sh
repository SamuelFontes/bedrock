#!/bin/bash
# Check if it's WSL or regular distro
WSLFILE=/proc/sys/fs/binfmt_misc/WSLInterop
if [ -f "$WSLFILE" ]; then
	echo "$WSLFILE exists. It's Windows"
else
	echo "$WSLFILE does not exist. It's Linux"
fi
#cl65 main.asm --verbose --target nes -o /mnt/c/tools/fceux/game/bedrock.nes
#cl65 main.asm --verbose --target nes -o build/bedrock.nes
