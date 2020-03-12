FROM python:3.6.8-slim

#
# Criando diretorios do método
#

RUN mkdir src
WORKDIR /src

ADD preprocess.py .
ADD requeriments.txt .
ADD config.json .

#
# Criando diretorio dos database
#

COPY arquivos/ arquivos/

#
# Instalando dependências
#

RUN pip install --upgrade pip
RUN pip install -r requeriments.txt

#
# Rodando o container
#


CMD [ "python","preprocess.py" ]
