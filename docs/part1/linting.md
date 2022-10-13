# Python formatting

## Following the PEP8 style guide
To ensure that your Python-code is well formatted, one can use tools such as [flake8](https://flake8.pycqa.org/en/latest/), which can be installed with 
```bash
python -m pip install flake8
```
Flake8 checks the consistency (following the [PEP8 style guide](https://peps.python.org/pep-0008/)) of your code, using
- Pyflake, with the following [checks](https://flake8.pycqa.org/en/latest/user/error-codes.html)
- Pycodestyle, with the following [checks](https://pycodestyle.pycqa.org/en/latest/intro.html#error-codes)

Flake8 can be executed with
```bash
python -m flake8
```
Call 
```bash
python -m flake8 --help
```
for listing the listing options

We add a `.flake8` file in the project root with some additional configurations
```
[flake8]
exclude = docs,venv
max-line-length = 100
```

## Code consistency
Flake8 only checks the consistency of your code to a certain extent.
Modern Python allows for [type hints](https://peps.python.org/pep-0484/) which means that you can specify the input and output type for functions.

However, type-checking does not happen during run-time.
We prefer using [mypy](http://mypy-lang.org/) to perform these checks.
Mypy can be installed from PYPI
```bash
python -m pip install mypy
```
and be executed as
```bash
python -m mypy
```
We add the following options to `pyproject.toml`
```toml
[tool.mypy]
ignore_missing_imports = true
# Folders to exclude
exclude = [
    "docs/",
    "build/"
]
 # Folder to check with mypy
files = [ 
    "src",
    "tests" # Does not show errors when importing untyped libraries
]
```
where `ignore_missing_imports` is set to `True` to supress all errors coming from third-party libraries that are untyped.