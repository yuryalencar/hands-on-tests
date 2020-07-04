*** Keywords ***

Viu a tela home
    Wait Until Element Is Visible       ${BUTTON_NOVA_ANALISE}    timeout=5
    Page Should Contain Element         ${BUTTON_NOVA_ANALISE}