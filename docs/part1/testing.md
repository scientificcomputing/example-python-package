# Testing

It is very important to have tests for verification of your code.
There are several types of tests, see for instanche [Atlassian](https://www.atlassian.com/continuous-delivery/software-testing/types-of-software-testing) for a summary.

The most important types of tests are the _unit tests_, which tests the core functionality of your code.

The most common testing suite for Python in [pytest](https://docs.pytest.org/en/latest/), which can be installed from the [Python Package Index](https://docs.pytest.org/en/latest/) (PYPI) using
```bash
python -m pip install pytest
```

You can run `pytest` as
```bash
python -m pytest
```
Pytest will then find all files with names like `test_*.py` and `*_test.py`, see: [Conventions for test discovery](https://docs.pytest.org/en/latest/explanation/goodpractices.html#test-discovery) for more information.

We add the following information to `pyproject.toml` under table header: `[project.optional-dependencies]`
```toml
[project.optional-dependencies]
# Other entries
# ....
test = [
   "pytest",
]

[tool.pytest.ini_options]
addopts = [
    "--import-mode=importlib",
    # Other entries ....
]
```
The last option is due to pytest's recommendation for new projects, see [Choosing an import mode](https://docs.pytest.org/en/latest/explanation/goodpractices.html#choosing-an-import-mode) for more information.

For other inputs to `[tool.pytest.ini_options]` see: [https://docs.pytest.org/en/latest/reference/customize.html#pyproject-toml](https://docs.pytest.org/en/latest/reference/customize.html#pyproject-toml)
