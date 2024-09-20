#!/bin/bash

# Compilar el archivo .tex
latexmk -pdf -output-directory=build memoria_iruminot.tex || { echo "Error al compilar"; exit 1; }

# Verificar si el archivo PDF existe en la carpeta build
if [ -f build/memoria_iruminot.pdf ]; then
    # Mover el archivo PDF a la carpeta anterior
    mv build/memoria_iruminot.pdf ./ || { echo "No se pudo mover el archivo PDF"; exit 1; }
    echo "Archivo PDF movido correctamente a la carpeta anterior"
else
    echo "El archivo PDF no existe en la carpeta build"
    exit 1
fi


# abir el archivo pdf
#open acmef_proyecto_1_Ruminot.pdf
