FROM haskell:9.14.1-bookworm

RUN apt update && apt upgrade -y
RUN cabal update
RUN cabal v2-install -foptimize-heavily --ghc-options="-O" Agda-2.8.0
RUN apt install -y wget
RUN export PATH=$PATH:~/.cabal/bin/

ENTRYPOINT ["bash"]
