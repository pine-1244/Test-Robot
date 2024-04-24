*** Settings ***
Resource          ../resources/testes_put_usuario_recursos_swagger.resource
Test Setup        Abrir navegador
#Test Teardown     Fechar navegador


*** Test Cases ***
Cenário de teste: Cadastro de usuário administrador
    Passo 1 – acessar a página de login Qa.Coders Academy
    Passo 2 – digitar e-mail
    Passo 3 – digitar senha
    Passo 4 – clicar no botão entrar
    Passo 5 – clicar em cadastro
    Passo 6 – clicar em usuários
    Passo 7 – clicar em editar
    Passo 8 – cadastrar nome completo
    Passo 9 – cadastrar email
    Passo 10 – clicar no botão salvar