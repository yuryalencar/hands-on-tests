*** Keywords ***
Abrir o site do Predict
    Open Browser        https://predictcovid.com.br/      chrome
    Set Window Size     1080     720
    Set Selenium Implicit Wait     10

Fechar Navegador
    Sleep       1
    Capture Page Screenshot
    Close Browser