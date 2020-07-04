*** Keywords ***

Esperamos carregar
    Wait Until Element Is Visible       ${INPUT_EMAIL_LOGIN}    timeout=5

Insiro meu e-mail
    [Arguments]     ${email}

    Input Text      ${INPUT_EMAIL_LOGIN}     ${email}

Insiro minha senha
    [Arguments]     ${senha}

    Input Text      ${INPUT_SENHA_LOGIN}     ${senha}

Clico no botão de Login
    Sleep               2
    Click Element       ${BUTTON_REALIZAR_LOGIN}
