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
${opennextpage1}             class='css-kab9pu'[4]
${opennextpage2}             class=css-kab9pu
${opennextpage3}             class=css-kab9pu
${opennextpage4}             class=css-kab9pu
${opennextpage5}             class=css-kab9pu
${buttoneditar}              (//button[@id='edit'])[28]
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


Passo 7 – buscar pagina seguinte
    Wait Until Element Is Visible           locator=${opennextpage1}            
    Click Button                            locator=${opennextpage1}
    Wait Until Element Is Visible           locator=${opennextpage1}            
    Click Button                            locator=${opennextpage1}
    Wait Until Element Is Visible           locator=${opennextpage1}            
    Click Button                            locator=${opennextpage1}
    Sleep    2s

Passo 8 – clicar editar cadastro
    Wait Until Element Is Visible           locator=${buttoneditar}
    Click Button                             locator=${buttoneditar}
    Sleep    2s 


Passo 9 – escolher id
    Wait Until Element Is Visible    locator=${NomediretoriaInput}
    Input Text                       locator=${NomediretoriaInput}         text=Nara QuAlitys Hunters 
    Sleep    2s 

Passo 10 – clicar no botão salvar  
    Wait Until Element Is Visible      locator=${buttonsalvar} 
    Click Element                      locator=${buttonsalvar} 
