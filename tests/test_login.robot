*** Settings ***
Library         SeleniumLibrary
Library         ../forpython.py

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

Login com e-mail inválido
    Espera o Predict carregar
    # ${example}=     Example Tito for        path.txt
    # Log To Console      ${example}
    Clicar em acessar
    Esperamos carregar
    Insiro meu e-mail   naoexiste@gmail.com
    Insiro minha senha  covid192021
    Clico no botão de Login
    Ver um erro na tela de Login

Login com senha inválida
    Espera o Predict carregar
    Clicar em acessar
    Esperamos carregar
    Insiro meu e-mail   predictcovid@gmail.com
    Insiro minha senha  covid192020
    Clico no botão de Login
    Ver um erro na tela de Login

Login com senha inválida duas vezes seguidas
    Espera o Predict carregar
    Clicar em acessar
    Esperamos carregar
    Insiro meu e-mail   predictcovid@gmail.com
    Insiro minha senha  covid192020
    Clico no botão de Login
    Ver um erro na tela de Login

    Insiro meu e-mail   predictcovid@gmail.com
    Insiro minha senha  covid192020
    Clico no botão de Login
    Ver um erro na tela de Login

Login com email de formato inválido
    Espera o Predict carregar
    Clicar em acessar
    Esperamos carregar
    Insiro meu e-mail   predictcovid
    Insiro minha senha  covid192021
    Clico no botão de Login
    Ver um erro de email com formato inválido