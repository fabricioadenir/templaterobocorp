*** Settings ***
Documentation   Template robot main suite.

Resource        main.resource

*** Tasks ***
Primeira Task
    Example Keyword
    Example Python Keyword
    Log     ${TODAY}

Segunda Task
    Log     Executando a segunda task

End Task
    Log     Fim da execução do robô.


