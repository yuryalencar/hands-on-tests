# Como Rodar Meus Testes ?

> Rodando seus testes salvando os logs em uma pasta
```
robot -d ./[LOGS_PATH] [TESTS_PATH]/[FEATURE].feature.robot
```

> Exemplo de como rodar os testes salvando os logs em uma pasta
```
robot -d ./logs tests/radar/fornecedor.feature.robot
```

# Estrutura do projeto de testes


## 1. Como instalar

> Instale o Python no seu computador (Preferência Python 3)
```
https://www.python.org/downloads/
```

> Instale o Robot Framework
```
pip install robotframework
```

> Instale o Selenium WebDriver para o Robot (Testes Web)
```
pip install --upgrade robotframework-seleniumlibrary
```

> Instale o HTTP Requests (Chamadas de API)
```
pip install -U requests
pip install -U robotframework-requests
```

> Insira o ChromeDriver em suas variáveis de ambiente (Testes Web)
```
Mac OS: brew cask install chromedriver
Verificar como fazer de acordo com seu S.O.
