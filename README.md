Velexi Python Package Cookiecutter
==================================

The [Velexi Python Project Cookiecutter][vlxi-cookiecutter-python] is intended
to streamline the process of setting up a Python project that

* encourages the creation of high-quality software,

* promotes developer efficiency, and

* is distribution-ready.

### Features

* Modern Python package structure (e.g., package metadata and tool configuration
  specified in [`pyproject.toml`][python-packaging])

* Automated testing and coverage reporting framework (e.g., [pytest][pytest],
  [coverage][coverage], [tox][tox])

* Integration with code quality tools (e.g., [pre-commit][pre-commit],
  [black][black], [flake8][flake8], [radon][radon])

* Continuous integration (CI) via GitHub Actions (e.g., testing,
  documentation deployment)

* Quick references for software development tools (e.g., [Poetry][poetry],
  [pdoc][pdoc], etc.)

* Python package and dependency management using [Poetry][poetry]

* Directory-based development environment isolation with [direnv][direnv]

-------------------------------------------------------------------------------

Table of Contents
-----------------

1. [Usage][#1]

   1.1 [Cookiecutter Parameters][#1.1]

   1.2 [Setting Up a New Project][#1.2]

   1.3 [Publishing Package Documentation to GitHub Pages][#1.3]

2. [Contributor Notes][#2]

   2.1. [License][#2.1]

   2.2. [Repository Contents][#2.2]

   2.3. [Software Requirements][#2.3]

   2.4. [Setting Up to Develop the Cookiecutter][#2.4]

   2.5. [Additional Notes][#2.5]

3. [Documentation][#3]

-------------------------------------------------------------------------------

## 1. Usage

### 1.1. Cookiecutter Parameters

* `project_name`: project name

* `package_name`: Python package name

* `author`: project's primary author

* `email`: primary author's email

* `license`: type of license to use for the project

* `python_version`: Python versions compatible with project. See the
  "[Dependency sepcification][poetry-dependency-specification]" section
  of the Poetry documentation for version specifier semantics.

* `github_repo_owner`: owner of the GitHub repository for the project. To
  disable GitHub integration, set `github_repo_owner` to an empty string.

* `enable_github_pages`: flag indicating whether GitHub Pages should be enabled
  for the project

* `ci_include_codecov`: flag indicating whether the CI workflow should upload
  coverage statistics to [Codecov][codecov]

### 1.2. Setting Up a New Project

1. ___Prerequisites___

   * Install [Git][git].

   * Install [Python][python] 3.7.2 (or greater).

   * Install [Poetry][poetry] 1.2 (or greater).

     __Note__. The project template uses `poetry` instead of `pip` for
     management of Python package dependencies.

   * Install the [Cookiecutter][cookiecutter] Python package.

   * _Optional_. Install [direnv][direnv].

2. Use `cookiecutter` to create a new Python project.

   ```shell
   $ cookiecutter https://github.com/velexi-corporation/VLXI-Cookiecutter-Python.git
   ```

3. Set up a dedicated virtual environment for the project. Any of the common
   virtual environment options (e.g., `venv`, `direnv`, `conda`) should work.
   Below are instructions for setting up a `direnv` or `poetry` environment.

   __Note__: to avoid conflicts between virtual environments, only one method
   should be used to manage the virtual environment.

   * __`direnv` Environment__. __Note__: `direnv` manages the environment for
     both the Python and shell.

     * ___Prerequisite___. Install `direnv`.

     * Copy `extras/dot-envrc` to the project root directory, and rename it to
       `.envrc`.

       ```shell
       $ cd $PROJECT_ROOT_DIR
       $ cp extras/dot-envrc .envrc
       ```

     * Grant permission to direnv to execute the .envrc file.

       ```shell
       $ direnv allow
       ```

   * __`poetry` Environment__. __Note__: `poetry` only manages the Python
     environment (it does not manage the shell environment).

     * Create a `poetry` environment that uses a specific Python executable.
       For instance, if `python3` is on your `PATH`, the following command
       creates (or activates if it already exists) a Python virtual environment
       that uses `python3` for the project.

       ```shell
       $ poetry env use python3
       ```

       For commands to use other Python executables for the virtual environment,
       see the [Poetry Quick Reference][poetry-quick-reference].

4. Install the base Python package dependencies.

   ```shell
   $ poetry install
   ```

5. Configure Git.

   * Install the git pre-commit hooks.

     ```shell
     $ pre-commit install
     ```

   * _Optional_. Set up a remote Git repository (e.g., GitHub repository).

     * Create a remote Git repository.

     * Configure the remote Git repository.

       ```shell
       $ git remote add origin GIT_REMOTE
       ```

       where `GIT_REMOTE` is the URL of the remote Git repository.

     * Push the `main` branch to the remote Git repository.

       ```shell
       $ git checkout main
       $ git push -u origin main
       ```

6. Finish setting up the new Python project.

   * Verify the copyright year and owner in the copyright notice. If the
     project is licensed under Apache License 2.0, the copyright notice is
     located in the `NOTICE` file. Otherwise, the copyright notice is located
     in the `LICENSE` file.

   * Update the base Python package dependencies to the latest available
     versions.

     ```shell
     $ poetry update
     ```

   * Customize the `README.md` file to reflect the specifics of the project.

   * Commit all updated files (e.g., `poetry.lock`) to the project Git
     repository.

7. Add GitHub keys that are required for GitHub Actions workflows.

   __Codecov Token__

   These steps are needed only if the CI workflow includes uploading of
   coverage statistics to Codecov (i.e., `ci_include_codecov` set to `yes`
   when creating the project).

   1. Log into [Codecov][codecov] and enable the project GitHub repository on
      Codecov.

   2. Get the Codecov token for the repository by navigating to "Settings"
      from the project Codecov repo page.

   3. From the project GitHub repository, navigate to "Settings" > "Secrets"
      (in the "Security" section of the side menu).

   4. Add a repository secret named `CODECOV_TOKEN`.

8. ___Recommended___. Customize the settings for the project GitHub repository.

   __Code Stability__

   1. From the project GitHub repository, navigate to "Settings" > "Branches"
      (in the "Code and automation" section of the side menu).

   2. Set the default branch to `main`.

   3. Add branch protection for the `main` branch and enable the following
      configurations.

      * Require a pull request before merging

        * Require approvals

          * __Recommendation__: enable for projects with multiple active
            developers who can serve as reviewers

          * __Warning__: must be disabled for projects with a single developer

      * Require conversation resolution before merging

      * Do not allow bypassing the above settings

   __GitHub Actions Security__

   1. From the project GitHub repository, navigate to "Settings" > "Actions" >
      "General" (in the "Code and automation" section of the side menu).

   2. Configure "Actions permissions".

      * Select the most restrictive option and customize the sub-options.

        * Allow actions created by GitHub: yes

        * Allow actions by Marketplace verified creators: no

        * Allow specified actions and reusable workflows.

          ```
          JamesIves/github-pages-deploy-action@*,
          codecov/codecov-action@*,
          snok/install-poetry@*,
          ```

   3. Configure "Workflow permissions".

      * Select "Read repository content permissions".

      * Allow GitHub Actions to create and approve pull requests: no

### 1.3. Publishing Package Documentation to GitHub Pages

1. From the project GitHub repository, navigate to "Settings" > "Pages" (in
   the "Code and automation" section of the side menu) and configure GitHub
   Pages to deploy from the `gh-pages` branch.

   * Source: Deploy from a branch
   * Branch: gh-pages
     * Folder: /(root)

2. In the "About" section of the project GitHub repository, set "Website" to
   the URL for the project GitHub Pages.

3. That's it! Every time the `main` branch is updated, the CI workflow will
   automatically update the package documentation on GitHub Pages.

-------------------------------------------------------------------------------

## 2. Contributor Notes

### 2.1. License

The contents of this cookiecutter are covered under the Apache License 2.0
(included in the `LICENSE` file). The copyright for this cookiecutter is
contained in the `NOTICE` file.

### 2.2. Repository Contents

```
├── README.md               <- this file
├── RELEASE-NOTES.md        <- cookiecutter release notes
├── LICENSE                 <- cookiecutter license
├── NOTICE                  <- cookiecutter copyright notice
├── cookiecutter.json       <- cookiecutter configuration file
├── pyproject.toml          <- Python project metadata file for cookiecutter
│                              development
├── poetry.lock             <- Poetry lockfile
├── docs/                   <- cookiecutter documentation
├── extras/                 <- additional files that may be useful for
│                              cookiecutter development
├── hooks/                  <- cookiecutter scripts that run before and/or
│                              after project generation
├── spikes/                 <- experimental code
└── {{cookiecutter.name}}/  <- cookiecutter template
```

### 2.3. Software Requirements

#### Base Requirements

* [Git][git]
* [Python][python] (>=3.7.2)
* [Poetry][poetry]

#### Optional Packages

* [direnv][direnv]

#### Python Packages

See `[tool.poetry.dependencies]` section of [`pyproject.toml`](pyproject.toml).

### 2.4. Setting Up to Develop the Cookiecutter

1. Set up a dedicated virtual environment for cookiecutter development.
   See Step 3 from [Section 2.1][#2.1] for instructions on how to set up
   `direnv` and `poetry` environments.

2. Install the Python packages required for development.

   ```shell
   $ poetry install

3. Install the git pre-commit hooks.

   ```shell
   $ pre-commit install
   ```

4. Make the cookiecutter better!

### 2.5. Additional Notes

#### Updating Cookiecutter Template Dependencies

To update the Python dependencies for the template (contained in the
`{{cookiecutter.project_name}}` directory), use the following procedure to
ensure that package dependencies for developing the non-template components
of the cookiecutter (e.g., `hooks/pre_gen_project.py`) do not interfere with
package dependencies for the template.

* Create a local clone of the cookiecutter Git repository to use for
  cookiecutter development.

  ```shell
  $ git clone git@github.com:velexi-corporation/VLXI-Cookiecutter-Python.git
  ```

* Use `cookiecutter` from the local cookiecutter Git repository to create a
  clean project for template dependency updates.

  ```shell
  $ cookiecutter PATH/TO/LOCAL/REPO
  ```

* In the pristine project, perform the following steps to update the template's
  package dependencies.

  * Set up a virtual environment for developing the template (e.g., a direnv
    environment).

  * Use `poetry` or manually edit `pyproject.toml` to (1) make changes to the
    package dependency list and (2) update the package dependency versions.

  * Use `poetry` to update the package dependencies and versions recorded in
    the `poetry.lock` file.

* Update `{{cookiecutter.project_name}}/pyproject.toml`.

  * Copy `pyproject.toml` from the pristine project to
    `{{cookiecutter.project_name}}/pyproject.toml`.

  * Restore the templated values in the `[tool.poetry]` section to the
    following:

    <!-- {% raw %} -->
    ```jinja
    [tool.poetry]
    name = "{{ cookiecutter.package_name }}"
    version = "0.1.0"
    description = ""
    license = "{% if cookiecutter.license == 'Apache License 2.0' %}Apache-2.0{% elif cookiecutter.license == 'BSD-3-Clause License' %}BSD-3-Clause{% elif cookiecutter.license == 'MIT License' %}MIT{% endif %}"
    readme = "README.md"
    authors = ["{{ cookiecutter.author }} <{{ cookiecutter.email }}> and contributors"]
    ```
    <!-- {% endraw %} -->

* Update `{{cookiecutter.project_name}}/poetry.lock`.

  * Copy `poetry.lock` from the pristine project to
    `{{cookiecutter.project_name}}/poetry.lock`.

* Commit the updated `pyproject.toml` and `poetry.lock` files to the Git
  repository.

-------------------------------------------------------------------------------

## 3. Documentation

* [Poetry Quick Reference][poetry-quick-reference]

-------------------------------------------------------------------------------

[----------------------------- INTERNAL LINKS -----------------------------]: #

[#1]: #1-usage
[#1.1]: #11-cookiecutter-parameters
[#1.2]: #12-setting-up-a-new-project
[#1.3]: #13-publishing-package-documentation-to-github-pages

[#2]: #2-contributor-notes
[#2.1]: #21-license
[#2.2]: #22-repository-contents
[#2.3]: #23-software-requirements
[#2.4]: #24-setting-up-to-develop-the-cookiecutter
[#2.5]: #25-additional-notes

[#3]: #3-documentation

[---------------------------- REPOSITORY LINKS ----------------------------]: #

[poetry-quick-reference]: {{cookiecutter.project_name}}/docs/references/Poetry-Quick-Reference.md

[vlxi-cookiecutter-python]: https://github.com/velexi-corporation/VLXI-Cookiecutter-Python

[----------------------------- EXTERNAL LINKS -----------------------------]: #

[black]: https://black.readthedocs.io/

[codecov]: https://codecov.io/

[cookiecutter]: https://cookiecutter.readthedocs.io/en/latest/

[coverage]: https://coverage.readthedocs.io/

[direnv]: https://direnv.net/

[flake8]: https://flake8.pycqa.org/

[git]: https://git-scm.com/

[pdoc]: https://pdoc.dev/

[poetry]: https://python-poetry.org/

[poetry-dependency-specification]: https://python-poetry.org/docs/dependency-specification/

[pre-commit]: https://pre-commit.com/

[pytest]: https://docs.pytest.org/

[python]: https://www.python.org/

[python-packaging]: https://packaging.python.org/en/latest/specifications/declaring-project-metadata/#declaring-project-metadata

[radon]: https://radon.readthedocs.io/

[tox]: https://tox.wiki/
