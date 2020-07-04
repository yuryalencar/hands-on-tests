*** Settings ***
Library         SeleniumLibrary
Library         ../forpython.py

Resource        ../pages/home_page.robot
Resource        ../pages/login_page.robot
Resource        ../pages/logged_page.robot
Resource        ../pages/commons/hooks.robot
Resource        ../preconditions/login.robot
Resource        ../components/components.robot

Documentation   Testes a fim de dar um feedback
...             
...             dpofkopsdakfposad
...             oijfidsjfiojiodsajfoijasoi

Test Setup      Abrir o site do Predict
Test Teardown   Fechar Navegador

*** Test Cases ***
Enviar um feedback com sucesso
    Realizar o Login
    Esperar o botão pra dar feedback aparecer
    Clicar no botão para dar um feedback
    Inserir uma mensagem                    Example Feedback
    Clicar em enviar feedback
    Ver uma mensagem de confirmação
    Sleep           3