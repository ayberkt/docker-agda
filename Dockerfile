FROM haskell:9.6.2

RUN apt update && apt upgrade -y
RUN cabal update
RUN cabal v2-install --ghc-options="-foptimize-heavily" Agda-2.6.4
RUN apt install wget
RUN export PATH=$PATH:~/.cabal/bin/

ENTRYPOINT ["bash"]
