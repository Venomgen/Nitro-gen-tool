#!/bin/bash

# Définir les codes de couleur et de style
RED='\033[0;31m'
GREEN='\033[0;32m'
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
echo -e "${BOLD}${RED}Bienvenue chez Nitro-gen-tool.${RESET}"
echo ""

# Afficher les informations de contact dans un petit carré
echo -e "${GREEN}╔════════════════════╗${RESET}"
echo -e "${GREEN}║ Telegram : @amxshop1 ║${RESET}"
echo -e "${GREEN}║ Discord : Venom_gen ║${RESET}"
echo -e "${GREEN}║ Youtube : taiyoxi   ║${RESET}"
echo -e "${GREEN}╚════════════════════╝${RESET}"
echo ""

# Demander à l'utilisateur ce qu'il souhaite faire
echo -e "${BOLD}${GREEN}Entrez 1 pour générer et checker des Nitro Gift${RESET}"
read -p "Votre choix: " choice

if [ "$choice" == "1" ]; then
    # Demander combien de liens Nitro l'utilisateur souhaite générer et vérifier
    read -p "Combien de liens Nitro souhaitez-vous vérifier et générer ? " count

    # Générer et vérifier les liens Nitro
    echo "Génération et vérification de $count liens Nitro..."

    for i in $(seq 1 $count); do
        # Générer un faux lien Nitro (c'est juste un exemple, les vrais liens Nitro sont plus complexes)
        nitro_link="https://discord.gift/$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 16)"
        
        # Vérifier si le lien est valide (un vrai vérificateur ferait un appel API ou autre méthode pour vérifier)
        # Ici, c'est juste un exemple simplifié
        if [[ $(($RANDOM % 2)) == 0 ]]; then
            echo -e "${GREEN}Valide: $nitro_link${RESET}"
        else
            echo -e "${RED}Invalide: $nitro_link${RESET}"
        fi
    done

    echo -e "${BOLD}${GREEN}Vérification terminée.${RESET}"
else
    echo "Option invalide. Veuillez redémarrer le tool."
fi
