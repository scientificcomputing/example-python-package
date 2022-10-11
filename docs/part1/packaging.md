# Create an installable package

To be able to create a python package, we need a folder with the name of the package (in this repository it is called `mypackage`, located under `src/mypackage`), and a `pyproject.toml` file.

## Repository structure
We recommend using the source layout. See [this chapter](https://py-pkgs.org/04-package-structure.html#the-source-layout) for justification.


## Pyproject.toml
A [toml](https://toml.io/en/) (Tom's Obivous Minimal Language) file is a plain-text file, consisting of [tables](https://toml.io/en/v1.0.0#table)
which are a selection of key-value pairs.

An example is 
```toml
[project]
name = "catch_us"
authors = [
    {name = "Per Ulv", email = "per@acme.no"},
    {name = "Bippe Stankelbein", email = "bippe@roadrunner.no"}
    ]
version = "x.y.z" 
description = "Meep Meep"
# "readme" the description field in your package, 
# see: https://python-poetry.org/docs/pyproject/#readme
readme = "README.md" 
requires-python = ">=3.8"
# Path to license file, see: https://spdx.org/licenses/
# for a selection of licenses
license = {file = "LICENSE"}
# Direct dependencies
dependencies = [
    'acme',
    'numpy'
]
```

### Optional dependencies
The core functionality of a package (its classes and functions) might not depend on many other packages.

However, to be able to test the code, check for consistency and create coverage reports, one might meed additional dependencies.

One can therefore specify a second table in the `pyproject.toml` file, called
[project.optional-depencies].
This is treated as a sub-table of `project`.

For instance, if you want to test your package with [pytest](https://docs.pytest.org/en/7.1.x/), you can add
```toml
[project.optional-dependencies]
test = ["pytest"]
```
Then, when installing the package, you call `pip3 install .[test]` instead of `pip3 install .` to get the additional dependencies.

### Other tables
For options related to coverage reports and code consistency, see the [Coverage](./coverage) and [Linting](./linting.md) section, respectively.