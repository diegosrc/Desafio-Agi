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

### `/integration_tests`
Testes que verificam a integração entre diferentes sistemas ou componentes. Aqui estão incluídos testes de APIs e outros serviços que se comunicam com o sistema:
- **api_integration_tests.robot:** Contém testes para garantir que as APIs estão respondendo corretamente e se integrando com o sistema como esperado.

#### `tests/reports`
Diretório onde são salvos os relatórios gerados automaticamente após a execução dos testes:
- **output.xml:** Resultado bruto da execução.
- **log.html:** Detalhamento dos passos executados.
- **report.html:** Relatório final resumido.

#### `tests/resources`
Aqui ficam os arquivos que são compartilhados entre diferentes casos de teste:
- **Keywords:** Palavras-chave reutilizáveis definidas no Robot Framework.
- **Variáveis Globais:** Armazenamento de variáveis que podem ser reutilizadas em diversos testes.
- **Localizadores:** Elementos de interface (ID, XPath, CSS) usados nos testes.

#### `/src/pages`
Implementa o padrão **Page Object Model (POM)**. Aqui, as interações com os elementos da página são encapsuladas em classes, para melhor reusabilidade:
- **login_page.py:** Contém localizadores e ações específicas da página de login.
- **search_page.py:** Contém localizadores e ações específicas da página de busca.

#### `/src/utils`
Funções ou classes utilitárias que podem ser usadas em diferentes partes do projeto:
- **custom_helpers.py:** Funções auxiliares para lógica adicional ou manipulação de dados.

#### `/src/drivers`
Gestão dos drivers do Selenium:
- **webdriver_manager.py:** Automação do download e gerenciamento de drivers para os navegadores.

#### `/src/config`
Configurações globais do projeto:
- **settings.py:** Contém URLs, credenciais, tempo de espera e outras configurações globais que podem ser alteradas conforme o ambiente de execução.

#### `/src/test_data`
Diretório onde ficam os dados de teste:
- **test_data.json:** Arquivo contendo os dados que serão utilizados nos scripts de teste.

#### `/src/logs`
Diretório onde ficam armazenados os logs de execução:
- **test_execution.log:** Arquivo de log detalhando a execução dos testes, útil para diagnóstico de problemas.

### Executando a Automação

Para rodar os testes, utilize o seguinte comando no terminal:

```bash
robot tests/functional_tests/login_tests.robot
