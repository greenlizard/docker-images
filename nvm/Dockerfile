
FROM greenlizard/base

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

USER travis
ENV HOME /home/travis

RUN git clone https://github.com/creationix/nvm.git $HOME/.nvm && cd $HOME/.nvm && git checkout `git describe --abbrev=0 --tags`
RUN sudo /bin/bash -c "echo \"[[ -s \$HOME/.nvm/nvm.sh ]] && . \$HOME/.nvm/nvm.sh\" >> /etc/profile.d/npm.sh"
RUN echo "[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh" >> $HOME/.bashrc
ENV PATH $HOME/.nvm/bin:$PATH
RUN . "$HOME/.nvm/nvm.sh"
#RUN /bin/bash "source $HOME/.nvm/nvm.sh"

