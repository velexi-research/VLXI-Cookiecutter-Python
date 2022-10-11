Velexi Python Package Cookiecutter Release Notes
================================================

-------------------------------------------------------------------------------
0.4.1 (2022-10-10)
==================
### Bug Fixes
* Fix symbolic links for docs.

-------------------------------------------------------------------------------
0.4.0 (2022-10-10)
==================
### Cookiecutter Template Enhancements
* Simplify user-specified cookiecutter parameters.
* Add pre-generation hook to validate package name.
* Improve consistency of Jinja template variable expressions.
* Fix bugs.

### Cookiecutter Development Enhancements
* Migrate cookiecutter hooks to shell scripts.
* Remove unneeded package dependencies for cookiecutter development.
* Simplify pre-commit hooks.
* Update documentation.

-------------------------------------------------------------------------------
0.3.0 (2022-10-08)
==================
### Cookiecutter Template Enhancements
* Restructure project to be a cookiecutter instead of a GitHub template
  repository.
* Migrate to pyproject.toml for specifying project metadata and tool
  configuration.
* Add and streamline integrations with code quality tools: pytest, coverage,
  flake8, black, tox, git pre-commit hooks.
* Add GitHub Actions workflows for continuous integration (multi-environment
  testing and documentation deployment to GitHub Pages).
* Update all files to pass all pre-commit checks.
* Improve application of Apache License 2.0.

### Cookiecutter Development Enhancements
* Add integrations with tools for supporting code quality: black and git
  pre-commit hooks.
* Update all files to pass all pre-commit checks.
* Improve application of Apache License 2.0.

-------------------------------------------------------------------------------
0.2.1 (2021-08-31)
==================
* Add template for package-level `__init__.py` file.
* Migrate to semantic version numbers without "v" prefix.
* Improve documentation.

-------------------------------------------------------------------------------
0.2.0 (2021-03-15)
==================
* Improve package organization and structure.
* Improve documentation.

-------------------------------------------------------------------------------
0.1.0 (2020-09-07)
==================
* Initial version of package.

-------------------------------------------------------------------------------
