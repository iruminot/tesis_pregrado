#!/bin/bash

# Mensaje del commit proporcionado como argumento o por defecto
commit_message="${1:-'Actualización automática'}"

# Mostrar el estado actual del repositorio
echo "Verificando el estado del repositorio..."
git status

# Añadir todos los cambios al área de preparación
echo "Añadiendo archivos modificados..."
git add .

# Hacer el commit con el mensaje proporcionado o uno por defecto
echo "Haciendo commit..."
git commit -m "$commit_message"

# Hacer pull para sincronizar con el repositorio remoto
echo "Haciendo pull de la rama principal..."
git pull origin main

# Hacer push de los cambios al repositorio remoto
echo "Haciendo push a la rama principal..."
git push origin main

echo "¡Proceso completado!"
