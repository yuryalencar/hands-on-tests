*** Keywords ***
Espera o Predict carregar
    Wait Until Element Is Visible       ${BUTTON_ACESSAR}    timeout=5

Clicar em acessar
    Click Element       ${BUTTON_ACESSAR}