# ☁️ Plataforma de Telemetria em Nuvem

## 📌 Sobre o projeto

Este projeto consiste no desenvolvimento de uma plataforma de registro, armazenamento e análise de dados de telemetria utilizando computação em nuvem.

A proposta é permitir que dados reais obtidos durante testes de um veículo ou sistema experimental sejam inseridos na plataforma, armazenados de forma centralizada e posteriormente analisados e comparados entre diferentes sessões de teste.

O projeto tem como foco principal demonstrar como a computação em nuvem pode solucionar problemas relacionados ao armazenamento, acesso, organização e análise de dados de telemetria.

---

## 🎯 Objetivos

O projeto busca desenvolver uma solução capaz de:

- Registrar dados reais de telemetria;
- Organizar os dados por sessões de teste;
- Permitir acesso remoto aos dados;
- Manter um histórico dos testes realizados;
- Comparar dados de diferentes sessões;
- Gerar visualizações e gráficos;
- Identificar possíveis comportamentos anormais;

---

## ☁️ Por que utilizamos Computação em Nuvem?

A utilização da computação em nuvem é o principal diferencial do projeto.

Em uma solução totalmente local, os dados poderiam ficar armazenados em um único computador. Isso cria algumas limitações:

- Dependência de uma máquina específica;
- Dificuldade de acesso remoto;
- Dificuldade para compartilhar os dados;
- Limitações de armazenamento;
- Maior dificuldade para centralizar informações de vários testes.

A computação em nuvem permite que os dados sejam enviados para uma infraestrutura remota e centralizada, possibilitando que diferentes usuários e dispositivos tenham acesso às mesmas informações.

---

## 🧪 Obtenção e organização dos dados

Os dados serão obtidos a partir de medições reais realizadas durante os testes e inseridos no sistema pelo usuário. Entre os dados que poderão ser registrados temos velocidade, tensão, temperatura, tempo, aceleração dentre outros.

Cada conjunto de medições será associado a uma sessão de teste, permitindo posteriormente realizar comparações entre diferentes testes. Para evitar que os dados fiquem desorganizados, cada teste será registrado individualmente. Exemplo:

Teste 01
├── Data
├── Veículo
├── Descrição
└── Medições
    ├── Medição 1
    ├── Medição 2
    ├── Medição 3
    └── ...

Teste 02
├── Data
├── Veículo
├── Descrição
└── Medições
    ├── Medição 1
    ├── Medição 2
    └── ...

Essa organização permitirá comparar diferentes sessões e identificar alterações no comportamento do sistema.

---

## 🛠️ Tecnologias utilizadas

### Python: 

Será utilizado principalmente no backend e na manipulação dos dados, na comunicação com a API e no processamento de dados.

### 
