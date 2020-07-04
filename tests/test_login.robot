*** Settings ***
Library         SeleniumLibrary

Documentation   Testes no Login do Predict
...             
...             dpofkopsdakfposad
...             oijfidsjfiojiodsajfoijasoi

*** Test Cases ***
Login com sucesso no PredictCovid
    Abrir o site do Predict
    Espera o Predict carregar
    Clicar em acessar
    Esperamos carregar
    Insiro meu e-mail
    Insiro minha senha
    Clico no botão de Login
    Viu a tela home
    Fechar Navegador

*** Keywords ***
Abrir o site do Predict
    Open Browser        https://predictcovid.com.br/      chrome
    Set Window Size     1080     720
    Set Selenium Implicit Wait     10

Espera o Predict carregar
    Wait Until Element Is Visible       css:a[href='/home/']    timeout=5

Clicar em acessar
    Click Element       css:a[href='/home/']

Esperamos carregar
    Wait Until Element Is Visible       id:email    timeout=5

Insiro meu e-mail
    Input Text          id:email        predictcovid@gmail.com
    Log To Console      kodsjoijsodsajfio

Insiro minha senha
    Input Text          id:password     covid192021

Clico no botão de Login
    Sleep               2
    Click Element       id:btnLogin

Viu a tela home
    Wait Until Element Is Visible       css:a[href='/prediction/nova-analise/']    timeout=5
    Page Should Contain Element     css:a[href='/prediction/nova-analise/']

Fechar Navegador
    Capture Page Screenshot
    Close Browser