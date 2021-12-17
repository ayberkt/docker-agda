FROM haskell:9.2.1

RUN apt update && apt upgrade -y
RUN cabal update
RUN cabal v2-install Agda-2.6.2.1
RUN apt install wget
RUN export PATH=$PATH:~/.cabal/bin/

ENTRYPOINT ["bash"]
