FROM nginx:latest

WORKDIR /usr/src/app

RUN apt-get update && \
    apt-get install -y curl unzip

RUN curl -fsSL https://deno.land/x/install/install.sh | sh
RUN ln -s /root/.deno/bin/deno /usr/local/bin
RUN echo "deno --version"

COPY . .

EXPOSE 3000

RUN echo "Running deno server"

# ENTRYPOINT [ "deno" ]

CMD ["deno", "run", "--allow-net", "server.ts"]