# Publishing a Jupyter-book as a webpage

To make it simple to integrate the Jupyter-book with Github, we using Github Pages, as described in 
[Publishing to Github Pages](publishing-to-pages).

## Official Github Actions
Follow the steps in [Publishing with a Github Custom Actions workflow](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#publishing-with-a-custom-github-actions-workflow)

Follow the steps in [Creating a custom Github Actions](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#creating-a-custom-github-actions-workflow-to-publish-your-site),

For step 3, we would call `make doc` to generate the documentation at `docs/_build/html`, which in turn is the folder we upload as a Github page.

A Github action showing some of the steps can be found at [Actions/deploy-pages](https://github.com/actions/deploy-pages#usage).


## Using a Github branch for publishing
If one is using the `legacy` workflow from [peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages#github-pages-action) one would publish the html files to a branch, usually `gh-pages`.

1. On Github navigate to your repository
2. Under your repository name, choose `Settings`
3. Press `Pages`.
4. Under `Build and deployment` choose `Source: Deploy from a branch` and set the `branch` to `gh-pages`.
