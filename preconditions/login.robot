*** Settings ***
Library         SeleniumLibrary

Resource        ../pages/home_page.robot
Resource        ../pages/login_page.robot
Resource        ../pages/logged_page.robot
Resource        ../pages/commons/hooks.robot
Resource        ../components/components.robot

*** Keywords ***
Realizar o Login
    Espera o Predict carregar
    Clicar em acessar
    Esperamos carregar
    Insiro meu e-mail   predictcovid@gmail.com
    Insiro minha senha  covid192021
    Clico no botão de Login