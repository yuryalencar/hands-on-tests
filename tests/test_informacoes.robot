*** Settings ***
Library         SeleniumLibrary

Resource        ../pages/home_page.robot
Resource        ../pages/login_page.robot
Resource        ../pages/logged_page.robot
Resource        ../pages/commons/hooks.robot
Resource        ../components/components.robot
Resource        ../preconditions/login.robot

Documentation   Testes no Login do Predict
...             
...             dpofkopsdakfposad
...             oijfidsjfiojiodsajfoijasoi

Test Setup      Abrir o site do Predict
Test Teardown   Fechar Navegador

*** Test Cases ***
Verificar informações depois de logado
    Realizar o Login
    Clicar em informações
    Verificar se não existem os botões de acessar e cadastrar-se