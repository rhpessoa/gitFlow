#!/bin/bash
# Script de boas-vindas com verificação de nome e idade

# Apresenta mensagem de boas-vindas
echo "Bem-vindo ao programa!"

# Solicita o nome do usuário
read -p "Por favor, digite seu nome: " nome

# Verifica se o nome está vazio ou nulo
if [ -z "$nome" ]; then
  echo "Erro: O nome não pode estar vazio."
  exit 1
elif [ ${#nome} -lt 2 ]; then
  echo "Erro: O nome deve ter pelo menos 2 caracteres."
  exit 1
elif ! [[ "$nome" =~ ^[a-zA-Z]+$ ]]; then
  echo "Erro: O nome deve conter apenas caracteres alfabéticos."
  exit 1
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
