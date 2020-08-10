FROM upnt/docvim
ENV LANG="en_US.UTF-8" LANGUAGE="en_US:ja" LC_ALL="en_US.UTF-8"

COPY .bashrc /root/.bashrc
COPY .inputrc /root/.inputrc
COPY .bash_aliases /root/.bash_aliases
COPY bin /usr/local/bin
COPY nvim /root/.config/nvim

# install neovim
RUN apk update && \
    apk add --update --no-cache --virtual .builddeps curl make \
            linux-headers musl-dev g++ && \
    apk add --update --no-cache bash git && \
# install dein
    curl -sf https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh && \
    sh ./installer.sh ~/.cache/dein && \
# install plugins
    nvim -c "call dein#install()" -c UpdateRemotePlugins -c q! && \
    chmod u+x /usr/local/bin/* && \
# remove
    rm ./installer.sh && \
    apk del --purge .builddeps 

ENTRYPOINT ["nvim"]
