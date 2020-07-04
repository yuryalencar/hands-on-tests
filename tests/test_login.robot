*** Settings ***
Library         SeleniumLibrary

Resource        ../pages/home_page.robot
Resource        ../pages/login_page.robot
Resource        ../pages/logged_page.robot
Resource        ../pages/commons/hooks.robot
Resource        ../components/components.robot

Documentation   Testes no Login do Predict
...             
...             dpofkopsdakfposad
...             oijfidsjfiojiodsajfoijasoi

Test Setup      Abrir o site do Predict
Test Teardown   Fechar Navegador

*** Test Cases ***
Login com sucesso no PredictCovid
    Espera o Predict carregar
    Clicar em acessar
    Esperamos carregar
    Insiro meu e-mail   predictcovid@gmail.com
    Insiro minha senha  covid192021
    Clico no botão de Login
    Viu a tela home