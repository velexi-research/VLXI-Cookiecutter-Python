Python Package Template (v0.2.1)
================================

___Authors___  
Kevin T. Chu `<kevin@velexi.com>`

------------------------------------------------------------------------------

Contents
--------

1. [Overview][#1]

    1.1. [Directory Structure][#1.1]

    1.2. [License][#1.2]

2. [Usage][#2]

    2.1. [Setting Up][#2.1]

    2.2. [Running Tests][#2.2]

    2.3. [Cleaning the Project Directory][#2.3]

------------------------------------------------------------------------------

## 1. Overview

This package template is intended to streamline the process of setting up a
Python package.

### 1.1. Directory Structure

    README.md
    LICENSE
    README.md.template
    RELEASE-NOTES.md.template
    LICENSE.template
    LICENSE-THIRD-PARTY.template
    AUTHORS.template
    VERSION.template
    Makefile.template
    setup.py.template
    requirements.txt
    requirements-dev.txt
    requirements-test.txt
    setup.cfg
    bin/
    docs/
    template-docs/
    template-docs/extras

* `README.md`: this file (same as `README-Python-Template.md` in the
  `template-docs` directory)

* `LICENSE`: license file for this package template (same as
  `LICENSE-Python-Template` in the `template-docs` directory)

* `*.template`: template files for the package

    * Template files are indicated by `template` suffix. These files are
      intended to simplify the set up of the dataset repository. They should
      be renamed to remove the `template` suffix.

    * `Makefile.template`: template for Makefile defining a collection of
      useful commands to maintain software (e.g., `test`, `clean`)

    * `setup.py.template`: template for `setup.py` file for Python package

* `requirements.txt`, `requirements-dev.txt`, `requirements-test.txt`:
  requirements files containing list of Python packages required for
  usage, development, and testing, respectively

* `setup.cfg`: package configuration file used by `setup.py`, `pytest`,
  `coverage`, etc.

* `bin`: directory where executable programs (e.g., scripts, CLI tools) for
  the package should be placed

* `docs`: directory where package documentation should be placed

* `spikes`: directory for experimental code snippets

* `template-docs`: directory containing documentation this package template

* `template-docs/extras`: directory containing example and template files

### 1.2. License

The contents of this directory are covered under the LICENSE file contained in
the root directory of this package.

------------------------------------------------------------------------------

## 2. Usage

### 2.1. Setting Up

1. (OPTIONAL) Configure `direnv`.

    * Copy `template-docs/extras/envrc.example` to the package root directory
      and rename it to `.envrc`.

    * Follow `direnv` instructions to enable `.envrc` file.

2. Set up Python package.

    * Create directory for Python package.

    * Create empty `__init__.py` file in the package directory.

3. Construct valid `setup.py` and `Makefile` files.

    * Rename `setup.py.template` to `setup.py` and fill in template parameters
      indicated by double braces (e.g. `{{ PKG_NAME }}`).

    * Rename `Makefile.template` to `Makefile` and replace `{{ PKG_NAME }}`
      with the package name.

4. Update the contents of all remaining template files and rename them with the
   `template` suffixed removed (overwrite the original `README.md` and
   `LICENSE` files).

### 2.2. Running Tests

* Use `make` to run the unit tests and display coverage information.

  ```shell
  $ make
  ```

  Note that `fast-test` is the default Make target, so `make fast-test` will
  achieve the same result.

### 2.3. Cleaning the Package Directory

* Use `make clean` to automatically remove temporary files and directories
  generated during testing (e.g., temporary directories, coverage files).

  ```shell
  $ make clean
  ```

------------------------------------------------------------------------------

[-----------------------------INTERNAL LINKS-----------------------------]: #

[#1]: #1-overview
[#1.1]: #11-directory-structure
[#1.2]: #12-license

[#2]: #2-usage
[#2.1]: #21-setting-up
[#2.2]: #22-running-tests
[#2.3]: #23-cleaning-the-package-directory

[#3]: #3-references
