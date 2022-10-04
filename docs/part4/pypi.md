# Publishing package to pypi

Whenever you have a package that you want to share with others, you need a way to distribute it with others. Sharing your package through a repository at GitHub is one way, but most programming langues have their own way of distributing packages. For example `node` uses [npm](https://www.npmjs.com), `rust` uses [`crates.io`](https://crates.io) and `julia` uses [`Pkg`](https://docs.julialang.org/en/v1/stdlib/Pkg/)

Python uses the [Python Packaging Index (PyPI)](https://pypi.org) where the process is to first build a wheel of your package and then upload this wheel to the index. You can do everything with a package called [`build`](https://github.com/pypa/build), and of course you can [automate the process using GitHub actions](https://packaging.python.org/en/latest/guides/publishing-package-distribution-releases-using-github-actions-ci-cd-workflows/)


## Building multiple wheels using `cibuildwheel`

If your package contains extensions written in another language than python then you might need to build wheels for different platforms and architectures. In this case you can use a tool such as [`cibuildwheel`](https://cibuildwheel.readthedocs.io/en/stable/).