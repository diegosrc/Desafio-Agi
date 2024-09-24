# Desafio-Agi
Este repositório contém a solução para o desafio de automação de testes, onde o objetivo é automatizar cenários de pesquisa de artigos no Blog do Agi.


# Estrutura de Diretórios - Automação de Testes com Python e Robot Framework

Este projeto segue uma estrutura organizada para facilitar a automação de testes utilizando Python e Robot Framework, adotando boas práticas de mercado para manter o código limpo, reutilizável e de fácil manutenção.

## Estrutura de Diretórios

### Diretórios e Arquivos

#### `tests/functional_tests`
Contém todos os arquivos de testes, organizados em diferentes tipos como:
- **Testes Funcionais:** Testes de funcionalidades principais, como login e busca.
- **Testes de Integração:** Verificações de integração com APIs e outras interfaces.

#### `tests/resources`
Aqui ficam os arquivos que são compartilhados entre diferentes casos de teste:
- **Keywords:** Palavras-chave reutilizáveis definidas no Robot Framework.
- **Variáveis Globais:** Armazenamento de variáveis que podem ser reutilizadas em diversos testes.
- **Elements:** Elementos de interface (ID, XPath, CSS) usados nos testes.


### Executando a Automação

Para rodar os testes, utilize o seguinte comando no terminal:

```bash
.\.venv\Scripts\activate
```bash

```bash
robot .
```bash

```bash
.\.venv\Scripts\deactivate
```bash