*** Settings ***
Library         SeleniumLibrary
Library         ../forpython.py

Resource        ../pages/home_page.robot
Resource        ../pages/login_page.robot
Resource        ../pages/commons/hooks.robot
Resource        ../components/components.robot

Documentation   Testes a fim de dar um feedback
...             
...             dpofkopsdakfposad
...             oijfidsjfiojiodsajfoijasoi

Test Setup      Abrir o site do Predict
Test Teardown   Fechar Navegador

*** Test Cases ***
Enviar uma mensagem
    Inserir um nome         Hands-on
    Inserir um email        handson@gmail.com

    home_page.Inserir uma mensagem    Vamos contribuir
    Clicar em enviar
    Verificar o envio da mensagem