{{ cookiecutter.project_name }}
===============================================================================

-------------------------------------------------------------------------------

Table of Contents
-----------------

1. [Overview][#1]

    1.1. [Package Contents][#1.1]

    1.2. [License][#1.2]

2. [Usage][#2]

3. [Known Issues][#3]

4. [Contributor Notes][#4]

    4.1. [Setting Up a Development Environment][#4.1]

    4.2. [Running Automated Tests][#4.2]

    4.3. [Cleaning the Development Directory][#4.3]

-------------------------------------------------------------------------------

## 1. Overview

A description of the package.

### 1.1. Package Contents

```
├── README.md          <- this file
├── RELEASE-NOTES.md   <- package release notes
├── LICENSE            <- package license
├{% if cookiecutter.license == 'Apache License 2.0' %}── NOTICE             <- package copyright notice
├{% endif %}── Makefile           <- Makefile containing useful shortcuts (`make` rules).
├── pyproject.toml     <- Python project metadata file
├── poetry.lock        <- Poetry lockfile
├── setup.py           <- `setup.py` script to support legacy tools that don't
│                         support pyproject.toml
├── setup.cfg          <- TODO
├── bin/               <- scripts and programs (e.g., CLI tools)
├── docs/              <- documentation and references
├── extras/            <- additional files that may be useful for package
│                         development
├── spikes/            <- experimental code snippets, etc.
├── src/               <- package source code
└── tests/             <- package test code
```

### 1.2. License
{% if cookiecutter.license == 'Apache License 2.0' %}
The contents of this package are covered under the Apache License 2.0 (included
in the `LICENSE` file). The copyright for this package is contained in the
`NOTICE` file.
{% else %}
The contents of this package are covered under the license contained in the
`LICENSE` file.
{% endif %}
-------------------------------------------------------------------------------

## 2. Usage

Usage instructions for the package.

-------------------------------------------------------------------------------

## 3. Known Issues

Known issues for the package.

-------------------------------------------------------------------------------

## 4. Contributor Notes

### 4.1. Setting Up a Development Environment

__Note__: this project uses `poetry` to manage Python package dependencies.

* ___Prerequisites___

  * Install Python 3.7 (or greater). __Recommendation__: use `pyenv`
    to configure the project to use a specific version of Python.

  * Install [Poetry][poetry] 1.2 (or greater).

   * _Optional_. Install [direnv][direnv].

* Set up a dedicated virtual environment for the project. Any of the common
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

    * ___Prerequisite___. Install [Poetry][poetry].

    * Create a `poetry` environment that uses a specific Python executable.
      For instance, if `python3` is on your `PATH`, the following command
      creates (or activates if it already exists) a Python virtual environment
      that uses `python3`.

      ```shell
      $ poetry env use python3
      ```

      For commands to use other Python executables for the virtual environment,
      see the [Poetry Quick Reference][poetry-quick-reference].

### 4.2. Running Automated Tests

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

### 4.3. Cleaning the Development Directory

* Use `make clean` to automatically remove temporary files and directories
  generated during testing (e.g., temporary directories, coverage files).

  ```shell
  $ make clean
  ```

-------------------------------------------------------------------------------

[-----------------------------INTERNAL LINKS-----------------------------]: #

[#1]: #1-overview
[#1.1]: #11-package-contents
[#1.2]: #12-license

[#2]: #2-usage

[#3]: #3-known-issues

[#4]: #4-contributor-notes
[#4.1]: #41-setting-up-a-development-environment
[#4.2]: #42-running-automated-tests
[#4.3]: #43-cleaning-the-development-directory

[-----------------------------REPOSITORY LINKS-----------------------------]: #

[poetry-quick-reference]: docs/references/Poetry-Quick-Reference.md

[vlxi-cookiecutter-python]: https://github.com/velexi-corporation/VLXI-Cookiecutter-Python

[-----------------------------EXTERNAL LINKS-----------------------------]: #

[cookiecutter]: https://cookiecutter.readthedocs.io/en/latest/

[direnv]: https://direnv.net/

[poetry]: https://python-poetry.org/
