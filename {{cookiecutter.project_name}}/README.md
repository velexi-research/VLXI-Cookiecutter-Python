{{ cookiecutter.project_name }}
===============================================================================

[----------------------------- BADGES: BEGIN -----------------------------]: #

<table>{% if cookiecutter.enable_github_pages == "yes" %}
  <tr>
    <td>Documentation</td>
    <td>
      <a href="https://{{ cookiecutter.github_repo_owner }}.github.io/{{ cookiecutter.project_name }}/dev/"><img style="vertical-align: bottom;" src="https://img.shields.io/badge/docs-dev-blue.svg"/></a>
      <a href="https://{{ cookiecutter.github_repo_owner }}.github.io/{{ cookiecutter.project_name }}/stable/"><img style="vertical-align: bottom;" src="https://img.shields.io/badge/docs-stable-blue.svg"/></a>
    </td>
  </tr>
  {% endif %}
  <tr>
    <td>Build Status</td>
    <td>
      <a href="https://github.com/{{ cookiecutter.github_repo_owner }}/{{ cookiecutter.project_name }}/actions/workflows/CI.yml"><img style="vertical-align: bottom;" src="https://github.com/{{ cookiecutter.github_repo_owner }}/{{ cookiecutter.project_name }}/actions/workflows/CI.yml/badge.svg"/></a>{% if cookiecutter.ci_include_codecov == "yes" %}
      <a href="https://codecov.io/gh/{{ cookiecutter.github_repo_owner }}/{{ cookiecutter.project_name }}">
        <img style="vertical-align: bottom;" src="https://codecov.io/gh/{{ cookiecutter.github_repo_owner }}/{{ cookiecutter.project_name }}/branch/main/graph/badge.svg"/></a>{% endif %}
    </td>
  </tr>

  <!-- Miscellaneous Badges -->
  <tr>
    <td colspan=2 align="center">
      <a href="https://github.com/{{ cookiecutter.github_repo_owner }}/{{ cookiecutter.project_name }}/issues"><img style="vertical-align: bottom;" src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"/></a>
    </td>
  </tr>
</table>

[------------------------------ BADGES: END ------------------------------]: #

-------------------------------------------------------------------------------

A brief description of the package.

The {{ cookiecutter.project_name }} package features:

* a list of the core features of the project.

-------------------------------------------------------------------------------

Table of Contents
-----------------

1. [Overview][#1]

2. [Getting Started][#2]

3. [Known Issues][#3]

4. [Contributor Notes][#4]

   4.1. [License][#4.1]

   4.2. [Package Contents][#4.2]

   4.3. [Setting Up a Development Environment][#4.3]

   4.4. [Running Automated Tests][#4.4]

   4.5. [Cleaning the Development Directory][#4.5]

-------------------------------------------------------------------------------

## 1. Overview

A more detailed description of the package.

-------------------------------------------------------------------------------

## 2. Getting Started

Instructions for installing and using the package.

-------------------------------------------------------------------------------

## 3. Known Issues

Known issues for the package.

-------------------------------------------------------------------------------

## 4. Contributor Notes

### 4.1. License
{% if cookiecutter.license == "Apache License 2.0" %}
The contents of this package are covered under the Apache License 2.0 (included
in the `LICENSE` file). The copyright for this package is contained in the
`NOTICE` file.
{% else %}
The contents of this package are covered under the license contained in the
`LICENSE` file.
{% endif %}
### 4.2. Package Contents

```
├── README.md          <- this file
├── RELEASE-NOTES.md   <- package release notes
├── LICENSE            <- package license
├{% if cookiecutter.license == "Apache License 2.0" %}── NOTICE             <- package copyright notice
├{% endif %}── Makefile           <- Makefile containing useful shortcuts (`make` rules).
├── pyproject.toml     <- Python project metadata file
├── poetry.lock        <- Poetry lockfile
├── setup.py           <- `setup.py` script to support legacy tools that don't
│                         support pyproject.toml
├── bin/               <- scripts and programs (e.g., CLI tools)
├── docs/              <- package documentation
├── extras/            <- additional files and references that may be useful
│                         for package development
├── spikes/            <- experimental code snippets, etc.
├── src/               <- package source code
└── tests/             <- package test code
```

### 4.3. Setting Up a Development Environment

<strong><em>Note</em></strong>: this project uses `poetry` to manage Python
package dependencies.

1. Prerequisites

   * Install [Git][git].

   * Install [Python][python] 3.8 (or greater).
     <strong><em>Recommendation</em></strong>: use `pyenv` to configure the
     project to use a specific version of Python.

   * Install [Poetry][poetry] 1.2 (or greater).

   * <em>Optional</em>. Install [direnv][direnv].

2. Set up a dedicated virtual environment for the project. Any of the common
   virtual environment options (e.g., `venv`, `direnv`, `conda`) should work.
   Below are instructions for setting up a `direnv` or `poetry` environment.

   <strong><em>Note</em></strong>: to avoid conflicts between virtual
   environments, only one method should be used to manage the virtual
   environment.

   * <strong>`direnv` Environment</strong>. <em>Note</em>: `direnv` manages the
     environment for both Python and the shell.

     * Prerequisite. Install `direnv`.

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

   * <strong>`poetry` Environment</strong>. <em>Note</em>: `poetry` only
     manages the Python environment (it does not manage the shell environment).

     * Create a `poetry` environment that uses a specific Python executable.
       For instance, if `python3` is on your `PATH`, the following command
       creates (or activates if it already exists) a Python virtual environment
       that uses `python3`.

       ```shell
       $ poetry env use python3
       ```

       For commands to use other Python executables for the virtual environment,
       see the [Poetry Quick Reference][poetry-quick-reference].

3. Install the Python package dependencies.

   ```shell
   $ poetry install
   ```

4. Install the git pre-commit hooks.

   ```shell
   $ pre-commit install
   ```

### 4.4. Running Automated Tests

This project is configured to support (1) automated testing of code located in
the `src` directory and (2) analysis of how well the tests cover of the source
code (i.e., coverage analysis).

* Run all of the tests.

  ```shell
  $ make test
  ```

* Run all of the tests in fail-fast mode (i.e., stop after the first failing
  test).

  ```shell
  $ make fast-test
  ```

* Run all of the tests and run `pylint` on all source code files.

  ```shell
  $ make full-test
  ```

### 4.5. Cleaning the Development Directory

* Use `make clean` to automatically remove temporary files and directories
  generated during testing (e.g., temporary directories, coverage files).

  ```shell
  $ make clean
  ```

-------------------------------------------------------------------------------

[----------------------------- INTERNAL LINKS -----------------------------]: #

[#1]: #1-overview

[#2]: #2-getting-started

[#3]: #3-known-issues

[#4]: #4-contributor-notes
[#4.1]: #41-license
[#4.2]: #42-package-contents
[#4.3]: #43-setting-up-a-development-environment
[#4.4]: #44-running-automated-tests
[#4.5]: #45-cleaning-the-development-directory

[---------------------------- REPOSITORY LINKS ----------------------------]: #

[poetry-quick-reference]: extras/references/Poetry-Quick-Reference.md

[----------------------------- EXTERNAL LINKS -----------------------------]: #

[direnv]: https://direnv.net/

[git]: https://git-scm.com/

[python]: https://www.python.org/

[poetry]: https://python-poetry.org/
