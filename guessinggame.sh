#!/bin/bash

# Fonction pour deviner le nombre de fichiers
function guess_files {
    local file_count=$(ls -1 | wc -l)  # Nombre de fichiers dans le répertoire actuel
    while true; do
        echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
        read guess

        # Vérifie si l'entrée est un nombre
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre entier."
            continue
        fi

        if [[ $guess -lt $file_count ]]; then
            echo "Trop bas ! Essayez encore."
        elif [[ $guess -gt $file_count ]]; then
            echo "Trop haut ! Essayez encore."
        else
            echo "Félicitations ! Vous avez deviné le bon nombre : $file_count"
            break
        fi
    done
}

# Appel de la fonction
guess_files
