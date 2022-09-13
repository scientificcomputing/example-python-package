doc: # Generate Sphinx HTML documentation, including API docs
	sphinx-apidoc -o docs/ mypackage
	cp README.md docs/README.md
	jupyter book build docs

clean-pytest: # Remove output from pytest
	rm -rf .pytest_cache
	rm -rf test/__pycache__

clean-coverage: # Remove output from coverage
	rm -rf .coverage htmlcov

clean-mypackage: # Remove output from installing package
	rm -rf mypackage.egg-info mypackage/__pycache__

clean-mypy: # Remove output from mypy
	rm -rf .mypy_cache

clean-doc:  # Remove doc build directory
	rm -rf docs/_build

clean: clean-mypy clean-mypackage clean-coverage clean-pytest clean-doc
