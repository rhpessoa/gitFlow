#!/bin/bash
# Script de boas-vindas com verificação de nome e idade

# Apresenta mensagem de boas-vindas
echo "Bem-vindo ao programa!"

# Solicita o nome do usuário
read -p "Por favor, digite seu nome: " nome

# Verifica se o nome tem pelo menos 2 caracteres
if [ ${#nome} -lt 2 ]; then
  echo "Erro: O nome deve ter pelo menos 2 caracteres."
else
  echo "Bem-vindo, $nome!"
fi

# Solicita a idade do usuário
read -p "Por favor, digite sua idade: " idade

# Verifica se a idade do usuário não é nula
if [ -z "$idade" ]; then
    echo "Erro: A idade não pode ser nula."
else
    echo "Sua idade é: $idade"
    echo "$nome informou ter $idade anos!"
fi
