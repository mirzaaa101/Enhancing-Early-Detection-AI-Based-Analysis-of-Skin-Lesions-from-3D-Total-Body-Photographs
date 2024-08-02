FROM jupyter/tensorflow-notebook:latest

USER root

RUN pip install --upgrade pip && \
    pip install opencv-python transformers torch pillow && \
    fix-permissions "/home/${NB_USER}"

USER $NB_USER

WORKDIR /home/jovyan/work
COPY . /home/jovyan/work

# EXPOSE 8888
# CMD ["start-notebook.sh", "--NotebookApp.token=''}"]