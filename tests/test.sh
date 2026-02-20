#!/bin/bash
ERRORS=0

echo "Verificando usuario alfredoff..."
if id "alfredoff" &>/dev/null; then
  echo "OK"
else
  echo "FALTA usuario alfredoff"
  ERRORS=$((ERRORS+1))
fi

echo "Verificando grupo educatica..."
if getent group educatica &>/dev/null; then
  echo "OK"
else
  echo "FALTA grupo educatica"
  ERRORS=$((ERRORS+1))
fi

if [ "$ERRORS" -eq 0 ]; then
  echo "LABORATORIO APROBADO"
  exit 0
else
  echo "LABORATORIO NO APROBADO"
  exit 1
fi
