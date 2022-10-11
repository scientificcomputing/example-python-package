#!/usr/bin/env python

from {{cookiecutter.module_name}}.cli import main
{% if cookiecutter.use_argparse|lower == 'y' -%}
if __name__ == "__main__":
    import sys
    sys.exit(main())
{% endif -%}