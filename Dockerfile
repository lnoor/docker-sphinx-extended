FROM lnoor/sphinx:latest

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get autoremove \
    && apt-get -y install python3-pip npm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g jsdoc

RUN pip3 install --no-cache-dir \
    sphinx-argparse sphinx-js sphinx-jsonschema sphinx-websequencediagrams \
    sphinx-togglebutton sphinxcontrib-httpdomain sphinx-business-theme \
    sphinx-theme-material sphinxcontrib-nwdiag sphinxcontrib-seqdiag \
    sphinxcontrib-aafig sphinxcontrib-blockdiag sphinxcontrib-actdiag \
    ablog tinkerer sphinxcontrib-wiki tinkerer-localpost sphinxcontrib-fulltoc
