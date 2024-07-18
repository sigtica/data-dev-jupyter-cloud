FROM google/cloud-sdk:484.0.0-slim
ENV NOTEBOOK_PASSWORD=sha1:001573f70efc11f419c70fbe78b3af0e:12888e9468259b90ed82b3ab98fdeb2ec5f00116
WORKDIR /content
COPY . ./
EXPOSE 8888
RUN apt-get update && apt-get install zip unzip nano wget curl -y
RUN apt-get install python3-pip -y
RUN pip3 install jupyterlab pandas numpy requests passlib --break-system-packages
CMD jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root -NotebookApp.password=$NOTEBOOK_PASSWORD
