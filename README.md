Velexi Python Package Cookiecutter
==================================

__Authors__  
Kevin T. Chu `<kevin@velexi.com>`

-------------------------------------------------------------------------------

Table of Contents
-----------------

1. [Overview][#1]

    1.1. [Repository Contents][#1.1]

    1.2. [License][#1.2]

2. [Setting Up a New Project][#2]

   2.1. [Instructions][#2.1]

3. [Contributor Notes][#3]

   3.1. [Software Requirements][#3.1]

   3.2. [Setting Up to Develop the Cookiecutter][#3.2]

   3.3. [Additional Notes][#3.3]

4. [Documentation][#4]

-------------------------------------------------------------------------------

## 1. Overview

The [Velexi Python Project Cookiecutter][vlxi-cookiecutter-python] is intended
to streamline the process of setting up a Python project that is package-ready,
distribution-ready, and contains a standard set of software development tools.

### Features

* Modern Python package structure (e.g., package metadata specified in
 `pyproject.toml`)

* Continuous integration (CI) based on GitHub Actions

* Quick references for common software components (e.g., [Poetry][poetry],
  [pdoc][pdoc], etc.)

* Python package and dependency management using [Poetry][poetry]

* Directory-based shell (and Python) environment isolation for systems with
  `direnv` installed

### 1.1. Repository Contents

```
├── README.md          <- this file
├── RELEASE-NOTES.md   <- cookiecutter release notes
├── LICENSE            <- cookiecutter license
├── NOTICE             <- cookiecutter copyright notice
├── cookiecutter.json  <- cookiecutter configuration file
├── pyproject.toml     <- Python project metadata file for cookiecutter
│                         development
├── poetry.lock        <- Poetry lockfile
├── docs/              <- cookiecutter documentation
├── extras/            <- additional files that may be useful for cookiecutter
│                         development
├── hooks/             <- cookiecutter scripts that run before or after project
│                         generation
├── spikes/            <- experimental code
└── {{cookiecutter.project_directory}}/  <- cookiecutter template
```

### 1.2. License

The contents of this cookiecutter are covered under the Apache License 2.0
(included in the `LICENSE` file). The copyright for this cookiecutter is
contained in the `NOTICE` file.

-------------------------------------------------------------------------------

## 2. Setting Up a New Project

## 2.1. Instructions

1. ___Prerequisites___.

   * Install the [Cookiecutter][cookiecutter] Python package.

   * Install [Poetry](https://python-poetry.org/) 1.2 (or greater).

     * __Note__. The project template uses `poetry` instead of `pip` for
       management of Python package dependencies.

2. Use `cookiecutter` to create a new Python project.

   ```shell
   $ cookiecutter https://github.com/velexi-corporation/VLXI-Cookiecutter-Python.git
   ```

3. Finish setting up the new Python project.

   * ___Optional___. Set up the project to use `direnv` to manage the
     environment (for both Python and the shell).

     * Copy `extras/dot-envrc` to the project root directory and rename it to
       `.envrc`.

     * Grant permission to `direnv` to execute the `.envrc` file.

       ```shell
       $ direnv allow
       ```

   * Configure the Python package dependencies for the project.

     * Install the base Python package dependencies, and update them to the
       latest available versions.

       ```shell
       $ poetry install
       $ poetry update
       ```

     * Review the Python package dependencies for the project, and modify them
       as needed using the `poetry` CLI tool. For a quick reference of `poetry`
       commands, see the [Poetry Quick Reference][poetry-quick-reference].

     * Commit the updated `pyproject.toml` and `poetry.lock` files to the
       project Git repository.

4. Configure Git.

   * Set up a remote Git repository (e.g., GitHub repository).

   * Configure the remote Git repository.

     ```shell
     $ git remote add origin GIT_REMOTE
     ```

     where `GIT_REMOTE` is the URL to the remote Git repository.

5. Update the project documentation.

   * Customize the `README.md` file to reflect the specifics of the project.

   * Verify the copyright year and owner in the copyright notice. If the
     project is licensed under Apache License 2.0, the copyright notice is
     located in the `NOTICE` file. Otherwise, the copyright notice is located
     in the `LICENSE` file.

-------------------------------------------------------------------------------

## 3. Contributor Notes

### 3.1. Software Requirements

#### Base Requirements

* Git
* Python (>=3.7)
* [Poetry][poetry]

#### Optional Packages

* `direnv`

#### Python Packages

See `[tool.poetry.dependencies]` section of [`pyproject.toml`](pyproject.toml).

### 3.2. Setting Up to Develop the Cookiecutter

1. ___Optional___. Set up the cookiecutter project to use `direnv` to manage
  the environment (for both Python and the shell).

    * Copy `extras/dot-envrc` to the Git repository's root directory, and
      rename it to `.envrc`.

    * Grant permission to `direnv` to execute the `.envrc` file.

      ```shell
      $ direnv allow
      ```

2. Install the Python packages required for development.

   ```shell
   $ poetry install
   ```

3. Make the cookiecutter better!

### 3.3. Additional Notes

#### Updating Cookiecutter Template Dependencies

To update the Python dependencies for the template (contained in the
`{{cookiecutter.project_directory}}` directory), use the following procedure
to ensure that package dependencies for developing the non-template components
of the cookiecutter (e.g., `cookiecutter.json`) do not interfere with package
dependencies for the template.

* Create a local clone of the cookiecutter Git repository to use for
  cookiecutter development.

* Use `cookiecutter` from the local cookiecutter Git repository to create a
  clean project for template dependency updates.

  ```shell
  $ cookiecutter PATH/TO/LOCAL/REPO
  ```

* In the pristine project, perform the following steps to update the template's
  package dependencies.

  * Set up a virtual environment for developing the template (e.g., a `direnv`
    environment).

  * Edit `pyproject.toml` to (1) make changes to the package dependency list
    and (2) update the package dependency versions.

  * Use `poetry` to update the implicit package dependencies and versions
    recorded in the `poetry.lock` file.

* Update `{{cookiecutter.project_directory}}/pyproject.toml`.

  * Copy `pyproject.toml` from the pristine project to
    `{{cookiecutter.project_directory}}/pyproject.toml`.

  * Restore the templated values in the `[tool.poetry]` section to the
    following:

    <!-- {% raw %} -->
    ```jinja
    [tool.poetry]
    name = "{{ cookiecutter.project_name }}"
    version = "0.1.0"
    description = ""
    license = "{% if cookiecutter.license == 'Apache License 2.0' %}Apache-2.0{% elif cookiecutter.license == 'BSD-3-Clause License' %}BSD-3-Clause{% elif cookiecutter.license == 'MIT License' %}MIT{% endif %}"
    readme = "README.md"
    authors = ["{{ cookiecutter.author }} <{{ cookiecutter.email }}>"]
    ```
    <!-- {% endraw %} -->

* Update `{{cookiecutter.project_directory}}/poetry.lock`.

  * Copy `poetry.lock` from the pristine project to
    `{{cookiecutter.project_directory}}/poetry.lock`.

* Commit the updated `pyproject.toml` and `poetry.lock` files to the Git
  repository.

-------------------------------------------------------------------------------

## 4. Documentation

* [Poetry Quick Reference][poetry-quick-reference]

-------------------------------------------------------------------------------

[-----------------------------INTERNAL LINKS-----------------------------]: #

[#1]: #1-overview
[#1.1]: #11-repository-contents
[#1.2]: #12-license

[#2]: #2-setting-up-a-new-project
[#2.1]: #21-instructions

[#3]: #3-contributor-notes
[#3.1]: #31-software-requirements
[#3.2]: #32-setting-up-to-develop-the-cookiecutter
[#3.3]: #33-additional-notes

[#4]: #4-documentation

[-----------------------------REPOSITORY LINKS-----------------------------]: #

[poetry-quick-reference]: {{cookiecutter.project_directory}}/docs/references/Quick-References/Poetry-Quick-Reference.md

[vlxi-cookiecutter-python]: https://github.com/velexi-corporation/VLXI-Cookiecutter-Python

[-----------------------------EXTERNAL LINKS-----------------------------]: #

[cookiecutter]: https://cookiecutter.readthedocs.io/en/latest/

[pdoc]: https://pdoc.dev/

[pdoc3]: https://pdoc3.github.io/pdoc/

[poetry]: https://python-poetry.org/
