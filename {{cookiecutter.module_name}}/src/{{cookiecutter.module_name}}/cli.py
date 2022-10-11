"""Console script for {{cookiecutter.module_name}}."""

{% if cookiecutter.use_argparse|lower == 'y' -%}

import argparse


def main():
    """Console script for {{cookiecutter.module_name}}."""
    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('_', nargs='*')
    args = parser.parse_args()

    print("Arguments: " + str(args._))
    print("Replace this message by putting your code into "
          "{{cookiecutter.module_name}}.cli.main")
    return 0
{% endif -%}