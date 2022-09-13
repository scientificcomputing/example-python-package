# We want to use the README.md and contributing.md file from this folder 
# in the Jupter book. These files should be listed in `docs/_toc.yml`
DOCS = README.md CONTRIBUTING.md

# List of Python demos (without file extenion) from the repo `demo` to include in the jupyterbook. 
# These files should be listed in `docs/_toc.yml`
DEMOS = demo

doc: # Generate Sphinx HTML documentation, including API docs 
	@for file in ${DOCS}; do \
		cp $$file docs/. ;\
	done 
	@for demo in ${DEMOS}; do \
		jupytext --to=ipynb demo/$$demo.py --output=docs/$$demo.ipynb ;\
		jupyter book build -W docs ;\
	done

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
