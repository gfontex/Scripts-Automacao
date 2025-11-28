#!/bin/bash

# NOME: Monitor de Saúde do Servidor
# AUTOR: Gabriel Fontes
# DESCRIÇÃO: Script simples para verificar uso de disco e memória.
# Ideal para rotinas de SysAdmin e monitoramento básico.

echo "----------------------------------------"
echo " RELATÓRIO DE SAÚDE DO SISTEMA"
echo " Data: $(date)"
echo "----------------------------------------"

# 1. Verificar Uso do Disco
# O comando 'df -h' mostra o espaço em disco. O awk filtra a porcentagem.
USO_DISCO=$(df -h / | grep / | awk '{ print $5 }' | sed 's/%//g')

echo "[INFO] Verificando Espaço em Disco..."
if [ "$USO_DISCO" -gt 80 ]; then
    echo "ALERTA: Espaço em disco crítico! Uso em $USO_DISCO%"
else
    echo "Disco OK. Uso atual: $USO_DISCO%"
fi

echo ""

# 2. Verificar Uso de Memória RAM
# O comando 'free -m' mostra a memória em MB.
MEMORIA_LIVRE=$(free -m | grep Mem | awk '{ print $4 }')

echo "[INFO] Verificando Memória RAM..."
if [ "$MEMORIA_LIVRE" -lt 500 ]; then
    echo "ALERTA: Memória baixa! Apenas ${MEMORIA_LIVRE}MB livres."
else
    echo "Memória OK. ${MEMORIA_LIVRE}MB livres."
fi

echo "----------------------------------------"
echo "Fim do relatório."
