# Template base para projestos utilizando o Robocorp

Este template pode facilitar muito no desenvolvimento de novos robôs no dia dia. 
Ele é baseado no templete criado pelo Robocorp com o comando:
```
rcc create <name>
```

## Antes de tudo precisamos instalar o rcc:
Basta acessar o link e seguir as instruções: [RCC](https://github.com/robocorp/rcc#installing-rcc-from-command-line)
## Dicas de como ele foi construido.
- Na pasta `devdata` temos o arquivo `env.json` que podem reunir variáveis de ambiente para e execução do robô.
- `keywords` temos um arquivo `keywords.robot` que reune algumas keywords, podendo ser criados outros arquivos nestá pasta afim de deixar o projeto bem estruturado e organizado.
- `libraries` temos como exemplo o arquivo `MyLibrarie.py` que nele tem uma classe e uma função, da para perceber que o nome do arquivo e a classe presente tem o mesmo nome, isso facilita no import como podemos ver em `tasks.robot` na linha **9**.
- `output` é criada automaticamente para nela ficar os logs de execução.
- `resources` temos dois arquivos, `locators.resource` onde podemos deixar todos os locator dos sistemas, seja web ou desktop. `main.resource` temos o importe de tudo que precisamos para o nosso robô executar, dessa forma os demais arquivos só importaremos o `main.resource` e tudo que nele conter todos verão.
- `variables` temos o arquivo `variables.py` onde definimos as variáveis de execução e configuração.
- No arquivo `conda.yaml` fica toda a configuração para a criação do ambiente que o rcc irá criar para executar o robô, na linha **15** temo um exemplo de como instalar uma dependência.
- `robot.yaml` na linha **3** ele facilita nossa vida para não precisarmos digitar o comando extenso do robot, na linha **25** informamos quais pastas queremos que seja mapeada para facilitar nossos imports.
- `template-schema.json` é um exemplo de como executar nosso robô seguindo um fluxo de operação, mais detalhes em [Tasks](https://robocorp.com/docs/libraries/rpa-framework/rpa-tasks), ele esta sendo referênciado no arquivo `main.resource` na linha **6**.
- E por ultimo o arquivo `tasks.robot` que é o arquivo de inicio da execução do robô, na linha **4** podemos ver como funciona o exemplo de importar o `main.resouce` e não precisar importar mais nada.

## Tendo essa explicação básica podemos executar o robô.

Execução do robô:
```
rcc run
```
Caso queira rodar o robô mas queira que ele use as variáveis de ambiente do `env.json`:
```
rcc run devdata\env.json
```

Fornece credenciais de acesso para conectividade Robocorp Cloud:
```
rcc configure credentials <suas_credenciais>
```

Subir para seu repositório na Robocorp Cloud:
```
rcc cloud push --workspace <workspace_id> --robot <robot_id>
```

### Sugestão de diretórios
A estrutura de diretório fornecida pelo template:
```
├── devdata
├── keywords
│   └── keywords.robot
├── libraries
│   └── MyLibrary.py
├── resources
│   └── locators.resource
│   └── main.resource
├── variables
│   └── variables.py
├── conda.yaml
├── robot.yaml
├── template-schema.json
└── tasks.robot
```

### Configuração adicional
Configuração adicional. Veja [Docs] (https://robocorp.com/docs/setup/robot-structure#robot-configuration-file-robot-yaml)


### Documentação adicional
[Robocorp Docs](https://robocorp.com/docs/) for more documentation.
