FROM jupyter/base-notebook:latest

# Install PDL + JupyterLab RISE
RUN pip install -U prompt-declaration-language jupyterlab-rise

WORKDIR /home/jovyan/work

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", \
     "--NotebookApp.token=''", "--NotebookApp.password=''"]