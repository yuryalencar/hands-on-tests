*** Keywords ***

Esperamos carregar
    Wait Until Element Is Visible       ${INPUT_EMAIL_LOGIN}    timeout=5

Insiro meu e-mail
    [Arguments]     ${email}

    Input Text      ${INPUT_EMAIL_LOGIN}     ${email}
    # Execute Javascript      document.getElementById("email").value="${email}"

Insiro minha senha
    [Arguments]     ${senha}

    Input Text      ${INPUT_SENHA_LOGIN}     ${senha}

Clico no botão de Login
    Sleep               4
    Click Element       ${BUTTON_REALIZAR_LOGIN}

Ver um erro na tela de Login
    Wait Until Element Is Visible       ${TOAST_ERRO_LOGIN}    timeout=5
    Page Should Contain                 Não foi possível efetuar o login. Verifique os dados e tente Novamente.

Esperar erro na tela de login sumir
    Wait Until Page Does Not Contain Element       ${TOAST_ERRO_LOGIN}    timeout=5

Ver um erro de email com formato inválido
    Wait Until Element Is Visible       ${LABEL_INVALID_EMAIL_FORMAT}    timeout=5
    Page Should Contain                Insira um e-mail válido.
