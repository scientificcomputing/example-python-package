doc: # Generate Sphinx HTML documentation, including API docs
    cp README.md docs/README.md
	jupyter book build docs

clean-pytest: # Remove output from pytest
	rm -rf .pytest_cache
	rm -rf test/__pycache__

clean-coverage: # Remove output from coverage
	rm -rf .covarge htmlcov

clean-mypackage: # Remove output from installing package
	rm -rf mypackage.egg-info mypackage/__pycache__

clean-mypy: # Remove output from mypy
	rm -rf .mypy_cache

clean: clean-mypy clean-mypackage clean-coverage clean-pytest
