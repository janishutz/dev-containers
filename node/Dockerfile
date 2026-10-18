FROM archlinux

LABEL org.opencontainers.image.title="janishutz dev containers node"
LABEL org.opencontainers.image.description="janishutz dev containers node image, includes yarn and typescript"

WORKDIR /mnt

RUN pacman --noconfirm -Sy wget git zoxide nodejs npm yarn typescript

COPY ./hostname /etc/hostname

COPY eslint.config.mjs /eslint.config.mjs
COPY setup-eslint /usr/bin/setup-eslint

RUN npm i -g create-vue

CMD [ "bash" ]
