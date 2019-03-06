FROM debian:stretch-slim

RUN apt update && apt install -y \
  jupyter-core \
  jupyter-notebook \
  python3-matplotlib \
  python3-numpy \
  python3-pandas \
  python3-pip \
  python3-requests \
  python3-scipy \
  python3-seaborn \
  python-pip \
  vim \
  git \
  ffmpeg

RUN pip3 install \
  py-trello \
  rasa_nlu \
  sklearn_crfsuite \
  slackclient \
  spacy\
  gtts\
  pysqlite3 \
  matplotlib \
  jellyfish \
  requests \
  pandas \
  sklearn \
  avs_client \
  cherrypy\
  pydub\
  six \
  py4j \
  nltk \
  rasa_core \
  gensim \
  slackclient \
  tensorflow \
  tensorlayer \
  keras \
  textblob \
  stanfordcorenlp \
  dill \
  ftfy \
  scipy \
  slackeventsapi \
  pymessenger \
  flask

EXPOSE 8888
EXPOSE 9000
EXPOSE 5000
EXPOSE 5050

RUN python3 -m spacy download en
RUN python3 -m nltk.downloader all
WORKDIR /home/codete/
RUN mkdir /home/codete/workshop/
WORKDIR /home/codete/workshop/
RUN git clone https://github.com/codete/oreilly-intelligent-bots

CMD jupyter-notebook --ip=0.0.0.0 --no-browser --notebook-dir=/home/codete/workshop/
