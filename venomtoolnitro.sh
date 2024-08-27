#!/bin/bash

# Définir les codes de couleur et de style
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RESET='\033[0m'
BOLD='\033[1m'

# Effacer l'écran
clear

# Afficher le dessin ASCII du scorpion
echo -e "${RED}${BOLD}"
echo "          /\\"
echo "         /  \\"
echo "        |    |"
echo "     _  |____| _"
echo "    / \\/\\____/\\/ \\"
echo "   / /\\  |  |  /\\ \\"
echo "  / /  \\ |  | /  \\ \\"
echo " /_/    \\|__|/    \\_\\"
echo "   |     |     |"
echo "   |     |     |"
echo "   |     |     |"
echo "   \\_____/\\_____/ ${RESET}"

# Afficher le message de bienvenue
echo -e "${BOLD}${RED}Bienvenue chez VenomTool.${RESET}"
echo ""

# Afficher les informations de contact dans un petit carré
echo -e "${GREEN}╔════════════════════╗${RESET}"
echo -e "${GREEN}║ Telegram : @amxshop1 ║${RESET}"
echo -e "${GREEN}║ Discord : Venom_gen ║${RESET}"
echo -e "${GREEN}║ Youtube : taiyoxi   ║${RESET}"
echo -e "${GREEN}╚════════════════════╝${RESET}"