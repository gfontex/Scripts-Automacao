# Automação de Infraestrutura: Server Health Check

Este projeto consiste num script em **Bash (Shell Script)** desenvolvido para automatizar a verificação de saúde de servidores Linux.

## Objetivo
Em ambientes de DevOps e Infraestrutura, garantir a disponibilidade (Availability) é crucial. Este script simula um agente de monitorização que alerta o administrador caso os recursos do sistema atinjam níveis críticos.

## Tecnologias Utilizadas
* **Shell Script (Bash):** Linguagem padrão para administração de sistemas Linux.
* **Comandos de Sistema:** `df`, `free`, `grep`, `awk` para manipulação de texto e métricas.
* **Lógica Condicional:** Estruturas `if/else` para tomada de decisão baseada em métricas.

## Como Funciona
O script verifica automaticamente:
1.  Se o uso do disco principal ultrapassa **80%**.
2.  Se a memória RAM livre é inferior a **500MB**.
3.  Gera um relatório visual no terminal com status de "OK" ou "ALERTA".
