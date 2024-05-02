*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    RequestsLibrary
Library    String


*** Variables ***
${URL}                       https://automacao.qacoders-academy.com.br
${emailInput}                //input[contains(@name,'email')]
${passwordinput}             //input[contains(@type,'password')]
${buttonEntrar}              //button[contains(.,'Entrar')]
${cadastrolink}              //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${buttondiretorias}          //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]
${buttonnovocadastro}        //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${NomediretoriaInput}        //input[@name='boardName']
${buttonsalvarnovo}          //button[@type='submit'][contains(.,'SALVAR NOVO')]




*** Keywords ***
Abrir navegador
    Open Browser                browser=headlesschrome
    Maximize Browser Window

#Fechar navegador
    #Close Browser

Passo 1 – acessar a página de login Qa.Coders Academy
    Go To    url=${URL}  

Passo 2 – digitar e-mail
    Wait Until Element Is Visible     locator=${emailInput}
    Input Text                        locator=${emailInput}    text=sysadmin@qacoders.com
    Sleep    1s

Passo 3 – digitar senha 
    Wait Until Element Is Visible     locator=${passwordinput}
    Input Text                        locator=${passwordinput}    text=1234@Test
    Sleep    1s 

Passo 4 – clicar no botão entrar
    Wait Until Element Is Visible     locator=${buttonEntrar}
    Click Button                      locator=${buttonEntrar}
    Sleep    1s

Passo 5 – clicar em cadastro
    Wait Until Element Is Visible      locator=${cadastrolink}
    Click Element                      locator=${cadastrolink}
    Sleep    2s

Passo 6 – clicar em Diretorias
    Wait Until Element Is Visible      locator=${buttondiretorias}
    Click Element                      locator=${buttondiretorias}
    Sleep    2s    

Passo 7 – clicar em novo cadastro
    Wait Until Element Is Visible      locator=${buttonnovocadastro}
    Click Element                      locator=${buttonnovocadastro}
    Sleep    2s 

Passo 8 – cadastrar Diretoria
    Wait Until Element Is Visible    locator=${NomediretoriaInput}
    Input Text                       locator=${NomediretoriaInput}    text=${DIRETORIA}  
    Sleep    2s

Passo 9 – clicar no botão salvar
    Wait Until Element Is Visible      locator=${buttonsalvarnovo}
    Click Element                      locator=${buttonsalvarnovo}
    Sleep    5s



Gerar massa de dados nome
    ${palavra_randomica}    Generate Random String    length=9    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case    ${palavra_randomica}
    Set Test Variable       ${DIRETORIA}             ${palavra_randomica}