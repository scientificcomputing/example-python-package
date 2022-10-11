import os

REMOVE_PATHS = [
    '{% if cookiecutter.testing|lower != "y" %} tests/test_import.py{% endif %}',
    '{% if cookiecutter.testing|lower != "y" %} tests/{% endif %}',
]

for path in REMOVE_PATHS:
    path = path.strip()
    if path and os.path.exists(path):
        if os.path.isdir(path):
            os.rmdir(path)
        else:
            os.unlink(path)
