# Coverage reports

When creating a Python package, it can be very useful to know what part of your code is covered by the tests.

We recommend using [pytest-cov](https://pytest-cov.readthedocs.io/en/latest/) which extends the [pytest](./testing.md) suite with a coverage report of your package.

We add to the `addopts` section of the `[tool.pytest.ini_options]` table:
```toml
addopts = [
    # Other options...
    "--cov=mypackage --cov-report html --cov-report term-missing -v"
]
```

We use Github Actions to upload the coverage report as an artifact after executing the tests. We add the following step
```yaml
      - name: Run tests
        run: python -m pytest 

      - name: Upload coverage report as artifact
        if: matrix.os == 'ubuntu-22.04' && matrix.python-version == '3.10'
        uses: actions/upload-artifact@v3
        with:
          name: code-coverage-report
          path: htmlcov
          if-no-files-found: error
```