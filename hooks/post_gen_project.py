import os

REMOVE_PATHS = [
    '{% if cookiecutter.testing|lower != "y" %} tests/test_import.py{% endif %}',
    '{% if cookiecutter.testing|lower != "y" %} tests/{% endif %}',
    '{% if cookiecutter.testing|lower != "y" %} .github/workflows/test_package.yml{% endif %}',
    '{% if cookiecutter.linting|lower != "y" %} .github/workflows/test_formatting.yml{% endif %}',
    '{% if cookiecutter.linting|lower != "y" %} .flake8{% endif %}',
    '{% if cookiecutter.build_docs|lower != "y" %} .github/workflows/build_docs.yml{% endif %}',
    '{% if cookiecutter.build_docs|lower != "y" %} docs/_config.yml{% endif %}',
    '{% if cookiecutter.build_docs|lower != "y" %} docs/_toc.yml{% endif %}',
    '{% if cookiecutter.build_docs|lower != "y" %} docs/api.rst{% endif %}',
    '{% if cookiecutter.build_docs|lower != "y" %} docs/index.md{% endif %}',
    '{% if cookiecutter.build_docs|lower != "y" %} docs/logo.png{% endif %}',
    '{% if cookiecutter.build_docs|lower != "y" %} docs{% endif %}'
]

for path in REMOVE_PATHS:
    path = path.strip()
    if path and os.path.exists(path):
        if os.path.isdir(path):
            os.rmdir(path)
        else:
            os.unlink(path)
