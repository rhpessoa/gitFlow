#!/bin/bash
# Script de boas-vindas com verificação de nome e idade

# Apresenta mensagem de boas-vindas
echo "Bem-vindo ao programa!"

# Função para registrar logs de erro
log_error() {
  local message="$1"
  local log_dir="logs"
  local log_file="$log_dir/log.txt"
  
  # Verifica se o diretório 'logs' existe, senão cria
  if [ ! -d "$log_dir" ]; then
    mkdir "$log_dir"
  fi

  # Registra a mensagem de erro com data e hora no arquivo de log
  echo "$(date +'%Y-%m-%d %H:%M:%S') - $message" >> "$log_file"
}

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
