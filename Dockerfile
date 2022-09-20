# We create a simple docker file that install the necesseary dependencies for the package

FROM ubuntu:22.04


RUN apt-get update && \
    apt-get install -y python3-pip git

# Use modern setuptools from pip instead of apt
RUN pip3 install pip setuptools --upgrade

RUN apt-get purge -y python3-setuptools


# Install mypackage
WORKDIR /tmp/
RUN git clone https://github.com/jorgensd/reproducibility && \
    pip install ./reproducibility[docs]

RUN rm -rf /tmp

# Create user with a home directory
ARG NB_USER
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

# Copy home directory for usage in binder
WORKDIR ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}
ENTRYPOINT []