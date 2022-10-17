# Building a static webpage
This webpage is built using [Jupyter book](https://jupyterbook.org/en/stable/intro.html), which is a tool to generate webpages from `markdown`, `restructured text`,`python notebooks` and many other formats.

A Jupyter book can consist of a combination of these kinds of files, and can allow users to interact with the code and visualize the results.
Examples can be found at:
- [FEniCSx tutorial](https://jorgensd.github.io/dolfinx-tutorial/)
- [Simcardems](https://computationalphysiology.github.io/simcardems/)
- [Oasisx](https://computationalphysiology.github.io/oasisx/)
- [Cardiac Geometries](https://computationalphysiology.github.io/cardiac_geometries/)
- [Action Potential Features](https://computationalphysiology.github.io/ap_features/)
- [Cardiac MPS Motion](https://computationalphysiology.github.io/mps_motion/)

There are two files that are required to build a Jupyter book, the _Table of Contents_ and the _Configuration_-file.

A good guide for setting up the book can be found at: [Jupyterbook - Official documentation](https://jupyterbook.org/en/stable/start/create.html)

## `_toc.yml`
A `yaml` file listing the contents of the book. See: [Jupyterbook - Table of Contents](https://jupyterbook.org/en/stable/structure/toc.html) for more information.

## `_config.yml`
A configuration file for the book, see: [Jupyterbook - Configuration reference](https://jupyterbook.org/en/stable/customize/config.html) for the full list of options. 