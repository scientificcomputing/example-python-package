Github has loads of features that can improve the quality of your code.
We will cover some of these features in this section.


# Workflows
A Github workflow is a way of creating exectuable jobs that is executed either when commiting to a branch, creating a pull request or creating a release/tag.
They are specified in [YAML](https://yaml.org/)-formatting.

More information about workflows can be found in the [Github Documentation](https://docs.github.com/en/actions/using-workflows/about-workflows)

## Actions
[Github Actions](https://github.com/features/actions) is a prebuilt set of instructions to make it easier to interact with Github.
The actions officially maintained by Github can be found at: phttps://github.com/actions](https://github.com/actions)

## Uploading artifacts
As covered in the [Coverage report](../part1/coverage)-section, we use the [Upload artifact action](https://github.com/actions/upload-artifact#readme)

## Publishing to Pages
There are several ways to publish a set of html files to Github Pages.
One can either:
1. __Official actions__: See [custom Github Actions to publish your site](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#creating-a-custom-github-actions-workflow-to-publish-your-site) for details
2. __Unofficial action__: Preceeding Github's official actions [peaceiris/actions-gh-pages](https://github.com/marketplace/actions/github-pages-action) was a popular option
