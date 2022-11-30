# ---
# jupyter:
#   jupytext:
#     formats: ipynb,py:light
#     text_representation:
#       extension: .py
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.14.1
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---
# # Using mypackage
# Author: Jørgen S. Dokken
#
# SPDX-License-Identifier:    MIT
import mypackage

# Next we define two numbers, `a` and `b`

# + vscode={"languageId": "python"}
a = 1
b = 3
# -

# and add them together

# + vscode={"languageId": "python"}
c = mypackage.addition(a, b)
# -

# We check the result

# + vscode={"languageId": "python"}
assert c == a + b
# -

print(c)
