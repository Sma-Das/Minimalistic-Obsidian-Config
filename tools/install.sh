#!/usr/bin/env bash

if ! command -v git &>/dev/null;
	echo "git not found, aborting"
	exit 1
fi

URL='https://github.com/Sma-Das/Minimalistic-Obsidian-Config'
TEMP_CONFIG='./temp_config'

command git clone ${TEMP_CONFIG} ${URL}|| echo "Failed to clone ${URL}" && exit 2

command cp -Tr ${TEMP_CONFIG}/.obsidian ./.obsidian || echo "Failed to copy obsidian config" && exit 3

command rm -rf ${TEMP_CONFIG} || echo "Failed to delete ${TEMP_CONFIG}" && exit 4

echo "Configuration copied! Enjoy!"
