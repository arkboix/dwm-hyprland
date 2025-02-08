#!/bin/bash
pkill swaync
swaync -c .config/swaync/config.jsonc -s .config/swaync/style.css
swaync-client -t