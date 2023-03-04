FROM lnoor/sphinx:2.0.1

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get autoremove \
    && apt-get -y --no-install-recommends install python3-pip npm zlib1g-dev libjpeg-dev python3-dev libffi-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g jsdoc

RUN pip3 install --no-cache-dir reportlab aafigure Pillow \
    sphinx-argparse sphinx-js sphinx-jsonschema sphinx-websequencediagrams \
    sphinx-togglebutton sphinxcontrib-httpdomain sphinx-business-theme \
    sphinx-theme-material sphinxcontrib-nwdiag sphinxcontrib-seqdiag \
    sphinxcontrib-aafig sphinxcontrib-blockdiag sphinxcontrib-actdiag \
    ablog sphinxcontrib-wiki sphinxcontrib-fulltoc sphinx-autodoc-typehints

# RUN pip3 install --no-cache-dir tinkerer tinkerer-localpost
