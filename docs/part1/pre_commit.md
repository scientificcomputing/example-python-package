# Pre-commit hooks

Using pre-commit hooks is a great way to make sure that the code you commit to the repo follows some common style. This way, you will not end up changing the style back and forth when collaborating with other people.

The file `.pre-commit-config.yaml` in the root of the repo contains a set of default pre-commit hooks. You can find more hooks in the [pre-commit home page](https://pre-commit.com/hooks.html).

To install the pre-commit hook you first need to install pre-commit
```
python -m pip install pre-commit
```
and then install the pre-commit hook
```
pre-commit install
```
The pre-commit hook will only run on the files you commit to the repo. To run the pre-commit hook on all the files in your repo, you can execute the command.
```
pre-commit run --all
```

## Running pre-commit in CI
You can also run the pre-commit hooks as a part of your continuous integration. You can check out the [GitHub action](https://github.com/pre-commit/action), or you can set up at webhook using [pre-commit.ci](https://pre-commit.ci).
