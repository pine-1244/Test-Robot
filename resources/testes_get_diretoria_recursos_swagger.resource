*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    RequestsLibrary
Library    String
Library    Faker



*** Variables ***
${URL}                       https://automacao.qacoders-academy.com.br
${emailInput}                //input[contains(@name,'email')]
${passwordinput}             //input[contains(@type,'password')]
${buttonEntrar}              //button[contains(.,'Entrar')]
${cadastrolink}              //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${buttondiretorias}          //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]
${buttonpesquisar}             //input[contains(@class,'MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng')]
${opennextpage2}             class=css-kab9pu
${opennextpage3}             class=css-kab9pu
${opennextpage4}             class=css-kab9pu
${opennextpage5}             class=css-kab9pu
${listar}                    //p[contains(.,'Teste Nara Q H')]
${listar2}                   //p[contains(.,'138')]
${buttoneditar}              (//button[@id='edit'])[04]
${NomediretoriaInput}        boardName
${buttonsalvar}              //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]




*** Keywords ***
Abrir navegador
    Open Browser                browser=headlesschrome
    Maximize Browser Window

Fechar navegador
    Close Browser

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


Passo 7 – selecionar campo pesquisar
    Wait Until Element Is Visible           locator=${buttonpesquisar}            
    Click Button                            locator=${buttonpesquisar}
    Input Text                              locator=${buttonpesquisar}         text=Nara QuAlity
    Sleep    2s


