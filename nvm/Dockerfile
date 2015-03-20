
FROM greenlizard/base

MAINTAINER GreenLizard Labs <gabriel@greenlizard.com.br>

RUN curl --location https://raw.github.com/creationix/nvm/master/install.sh | sh
RUN sudo /bin/bash -c "echo \"[[ -s \$HOME/.nvm/nvm.sh ]] && . \$HOME/.nvm/nvm.sh\" >> /etc/profile.d/npm.sh"
RUN echo "[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh" >> $HOME/.bashrc

ENV PATH $HOME/.nvm/bin:$PATH

