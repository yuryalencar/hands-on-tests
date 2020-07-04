*** Keywords ***

Viu a tela home
    Wait Until Element Is Visible       ${BUTTON_NOVA_ANALISE}    timeout=5
    Page Should Contain Element         ${BUTTON_NOVA_ANALISE}

Esperar o botão pra dar feedback aparecer
    Wait Until Element Is Visible       ${FEEDBACK_BUTTON}    timeout=5
    Page Should Contain Element         ${FEEDBACK_BUTTON}

Clicar no botão para dar um feedback
    Click Element                       ${FEEDBACK_BUTTON}

Inserir uma mensagem
    [Arguments]     ${mensagem}
    Input Text      ${TEXT_AREA_FEEDBACK}       ${mensagem}

Clicar em enviar feedback
    Click Element                       ${SEND_FEEDBACK_BUTTON}

Ver uma mensagem de confirmação
    Page Should Contain         Obrigado por contribuir :)
    Page Should Contain         Seu feedback foi enviado e será avaliado pela nossa equipe.

Clicar em informações
    Wait Until Element Is Visible   ${INFORMACOES_BUTTON}
    Click Element                   ${INFORMACOES_BUTTON}
