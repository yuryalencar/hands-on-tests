*** Keywords ***
Espera o Predict carregar
    Wait Until Element Is Visible       ${BUTTON_ACESSAR}    timeout=5

Clicar em acessar
    Click Element       ${BUTTON_ACESSAR}

Inserir uma mensagem
    [Arguments]     ${mensagem}
    Input Text      ${INPUT_MENSAGEM}       ${mensagem}

Inserir um nome
    [Arguments]     ${nome}
    Input Text      ${INPUT_NAME}       ${nome}

Inserir um email
    [Arguments]     ${email}
    Input Text      ${INPUT_EMAIL}       ${email}

Clicar em enviar
    Click Element   ${ENVIAR_MENSAGEM_BUTTON}

Verificar o envio da mensagem
    Wait Until Page Contains    Mensagem enviada com sucesso.
    Page Should Contain         Mensagem enviada com sucesso.