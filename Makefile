doc: # Generate Sphinx HTML documentation, including API docs
# We want to use the README.md file from the folder as the front page of the book.
# It has been added to _toc.yml as root
	cp README.md docs/README.md 
# We want to use the demos in the book, we convert them with jupytext and copy them to the documentation
	jupytext --to=ipynb demos/demo.py --output=docs/demo.ipynb
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

clean: clean-mypy clean-mypackage clean-coverage clean-pytest
