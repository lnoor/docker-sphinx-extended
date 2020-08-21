## Dockerfile for Sphinx

This [Docker](https://www.docker.com)  container offers the [Sphinx](https://sphinx-doc.org/en/master)
documentation utility. 
it is based on my [Sphinx base image](https://hub.docker.com/r/lnoor/sphinx) and extends it with a number of plugins.

Plugins included in this image are:

- [sphinx-argparse](https://sphinx-argparse.readthedocs.io/en/latest/)
- [sphinx-js](https://pypi.org/project/sphinx-js/)
- [sphinx-jsonschema](https://sphinx-jsonschema.readthedocs.io/en/latest/)
- [sphinx-websequencediagrams](https://pypi.org/project/sphinx-websequencediagrams/)
- [sphinx-togglebutton](https://sphinx-togglebutton.readthedocs.io/en/latest/)
- [sphinxcontrib-httpdomain](https://sphinxcontrib-httpdomain.readthedocs.io/en/stable/)
- [sphinx-business-theme](https://pypi.org/project/sphinx-business-theme/)
- [sphinx-theme-material](https://pypi.org/project/sphinx-theme-material/)
- [sphinxcontrib-nwdiag](https://pypi.org/project/sphinxcontrib-nwdiag/)
- [sphinxcontrib-seqdiag](https://pypi.org/project/sphinxcontrib-seqdiag/)
- [sphinxcontrib-aafig](https://pythonhosted.org/sphinxcontrib-aafig/)
- [sphinxcontrib-blockdiag](https://pypi.org/project/sphinxcontrib-blockdiag/)
- [sphinxcontrib-actdiag](https://pypi.org/project/sphinxcontrib-actdiag/)
- [ablog](https://ablog.readthedocs.io/)
- [tinkerer](http://tinkerer.me/)
- [sphinxcontrib-wiki](https://pypi.org/project/sphinxcontrib-wiki/)
- [tinkerer-localpost](https://pypi.org/project/Tinkerer-Localpost/)
- [sphinxcontrib-fulltoc](https://sphinxcontrib-fulltoc.readthedocs.io/en/latest/)

## Usage


Creating a new project::

   $ docker run -u `id -u`:`id -g` --rm -ti -v `pwd`:/work lnoor/sphinx sphinx-quickstart

Build documentation::

   $ docker run -u `id -u`:`id -g` --rm -ti -v `pwd`:/work lnoor/sphinx make html epub latexpdf

Note that the plugins are provided but you still need to enable them in your config file.
