FROM haskell:9.12.2-bookworm

RUN apt update && apt upgrade -y
RUN apt install -y zlib1g-dev libicu-dev
RUN cabal update
RUN cabal v2-install --ghc-options="-O -foptimize-heavily" Agda-2.8.0
RUN apt install -y wget
RUN export PATH=$PATH:~/.cabal/bin/

ENTRYPOINT ["bash"]
