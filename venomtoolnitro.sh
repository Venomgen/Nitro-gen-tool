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

# Demander à l'utilisateur s'il veut générer et vérifier des liens
echo -e "${CYAN}Entrer 1 pour générer et checker des Nitro gift${RESET}"
read -p "Choix: " choice

if [ "$choice" -eq 1 ]; then
    # Demander combien de liens vérifier et générer
    read -p "Combien de liens Nitro souhaitez-vous vérifier et générer ? " count

    # Vérifier si l'entrée est un nombre
    if ! [[ "$count" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}Veuillez entrer un nombre valide.${RESET}"
        exit 1
    fi

    echo -e "${CYAN}Génération et vérification de $count liens Nitro...${RESET}"

    # Fonction pour générer un lien Nitro fictif (remplacez cette fonction par la vraie génération si vous en avez une)
    generate_nitro_link() {
        echo "https://discord.gift/$(tr -dc A-Za-z0-9 </dev/urandom | head -c 16)"
    }

    # Fonction pour vérifier un lien Nitro
    check_link() {
        local url=$1
        local response

        # Envoyer une requête HTTP
        response=$(curl -s -o /dev/null -w "%{http_code}" "$url")

        if [ "$response" -eq 200 ]; then
            echo -e "Le lien ${url} est ${GREEN}VALIDE${RESET}"
        elif [ "$response" -eq 301 ] || [ "$response" -eq 302 ]; then
            echo -e "Le lien ${url} est ${CYAN}REDIRIGE${RESET}"
        else
            echo -e "Le lien ${url} est ${RED}INVALID${RESET}"
        fi
    }

    # Boucle pour générer et vérifier les liens
    for ((i=1; i<=$count; i++)); do
        link=$(generate_nitro_link)
        check_link "$link"
    done
else
    echo -e "${RED}Choix non valide.${RESET}"
fi
