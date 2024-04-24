*** Settings ***
Resource          ../resources/testes_get_diretoria_recursos_swagger.resource
Test Setup        Abrir navegador
#Test Teardown     Fechar navegador


*** Test Cases ***

Cenário de teste: Editar dados de usuário administrador
    Passo 1 – acessar a página de login Qa.Coders Academy
    Passo 2 – digitar e-mail
    Passo 3 – digitar senha
    Passo 4 – clicar no botão entrar
    Passo 5 – clicar em cadastro
    Passo 6 – clicar em Diretorias
    Passo 7 – selecionar campo pesquisar
    