FROM jupyter/base-notebook

RUN pip install jupyros

WORKDIR /notebook

COPY ricedebug.ipynb ./

COPY jupyter_notebook_config.py /home/jovyan/.jupyter/jupyter_notebook_config.py

RUN jupyter nbextension enable --py --sys-prefix jupyros

CMD jupyter notebook
