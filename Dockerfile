FROM haskell:9.10.1-bullseye

RUN apt update && apt upgrade -y
RUN cabal update
RUN cabal v2-install --ghc-options="-O -foptimize-heavily" Agda-2.7.0.1
RUN apt install wget
RUN export PATH=$PATH:~/.cabal/bin/

ENTRYPOINT ["bash"]
