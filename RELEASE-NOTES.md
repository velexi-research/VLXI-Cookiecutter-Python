Velexi Python Package Cookiecutter Release Notes
================================================

-------------------------------------------------------------------------------
0.7.3 (2025-07-09)
==================
### Cookiecutter Template
* Bump Python version requirement.

-------------------------------------------------------------------------------
0.7.2 (2025-07-09)
==================
### Cookiecutter Template
* Bump Python version requirement.

### Cookiecutter Development
* Update package dependencies.

-------------------------------------------------------------------------------
0.7.1 (2025-06-17)
==================
### Cookiecutter Template
* Remove obsolete Makefile variables.
* Update package dependencies to address security vulnerabilities.

### Cookiecutter Development
* Update package dependencies to address security vulnerabilities.

-------------------------------------------------------------------------------
0.7.0 (2024-06-25)
==================
### Cookiecutter Template
* Remove dependency on pytest-flake8 packages.
* Update Makefile to use `lint` target to perform flake8 checks during testing.
* Update package dependencies.

### Cookiecutter Development
* Update package dependencies.

-------------------------------------------------------------------------------
0.6.11 (2024-06-13)
===================
### Cookiecutter Template
* Bump minimum Python version to 3.10.

### Cookiecutter Development
* Bump minimum Python version to 3.10.

-------------------------------------------------------------------------------
0.6.10 (2024-06-13)
===================
### Cookiecutter Template
* Update quick references.
* Update package dependencies.

### Cookiecutter Development
* Update package dependencies.

-------------------------------------------------------------------------------
0.6.9 (2024-06-05)
==================
### Cookiecutter Template
* Update package dependencies.

### Cookiecutter Development
* Update package dependencies.

-------------------------------------------------------------------------------
0.6.8 (2024-05-07)
==================
### Cookiecutter Template
* Update package version dependencies.

### Cookiecutter Development
* Update package version dependencies.

-------------------------------------------------------------------------------
0.6.7 (2023-10-19)
==================
### Cookiecutter Template
* Fix bugs and improve cache names in CI GitHub Actions workflows.
* Update cookiecutter parameter list in README.
* Update package dependencies.

### Cookiecutter Development
* Update package dependencies.

-------------------------------------------------------------------------------
0.6.6 (2023-07-10)
==================
### Cookiecutter Template
* Fix error in README.
* Update package dependencies.

### Cookiecutter Development
* Update package dependencies.

-------------------------------------------------------------------------------
0.6.5 (2023-06-30)
==================
### Cookiecutter Template
* Update Makefile "clean" target.
* Update dependencies in pre-commit configuration.
* Update package dependencies.

### Cookiecutter Development
* Update package dependencies.

-------------------------------------------------------------------------------
0.6.4 (2023-06-20)
==================
### Cookiecutter Template
* Remove unnecessary pre-commit hook.
* Update package dependencies.

### Cookiecutter Development
* Update package dependencies.

-------------------------------------------------------------------------------
0.6.3 (2023-06-19)
==================
### Cookiecutter Template
* Polish .gitignore.
* Polish pre-commit configuration.

### Cookiecutter Development
* Polish .gitignore.
* Polish pre-commit configuration.

-------------------------------------------------------------------------------
0.6.2 (2023-06-18)
==================
### Cookiecutter Template
* Fix pre-commit configuration bug.
  - Add --allow-missing-credentials option for detect-aws-credentials.
* Update package dependency versions.
* Polish code.

### Cookiecutter Development
* Update package dependency versions.

-------------------------------------------------------------------------------
0.6.1 (2023-05-22)
==================
### Cookiecutter Template
* Polish dot-envrc.
* Update package dependency versions.

### Cookiecutter Development
* Polish dot-envrc.
* Update package dependency versions.

-------------------------------------------------------------------------------
0.6.0 (2023-05-21)
==================
### Cookiecutter Template
* Change GitHub Actions CI workflow to exclude windows and macOS by default.
* Add Cookiecutter parameters to include windows and macOS in CI workflow.
* Add code style badge to README.md.
* Fix pytest configuration bug in Makefile.
* Fix bugs in GitHub Actions jobs for building and deploying documentation.
* Fix error in documentation.
* Update package dependency versions.

### Cookiecutter Development
* Update package dependency versions.

-------------------------------------------------------------------------------
0.5.0 (2023-04-09)
==================
### Cookiecutter Template
* Update cookiecutter parameters.
  * "package_name" is no longer user-defined. It is now automatically set.
* Slugify project name in places where special characters may cause problems
  (e.g., URLs and directory names).
* Fix logic for setting up GitHub Actions when GitHub Pages are not enabled.
* Reorganize dependency groups in `pyproject.toml`. Make development groups
  optional.
* Update GitHub Actions CI workflow
  * Migrate to GitHub Actions for deploying documentation to GitHub Pages.
* Remove "full-test" target from Makefile.
* Update package dependency versions.
* Polish code and documentation.

### Cookiecutter Development
* Update package dependency versions.
* Add Apache license incantations to cookiecutter hook scripts.

-------------------------------------------------------------------------------
0.4.4 (2022-12-24)
==================
### Cookiecutter Template
* Change default project name in `pyproject.toml` to use dashes instead of
  underscores.
* Update package dependencies to address security vulnerabilities.
* Update README template.

-------------------------------------------------------------------------------
0.4.3 (2022-10-22)
==================
### Cookiecutter Template
* Improve pytest configuration.
* Change default value of "ci_include_x86" parameter to "no".

-------------------------------------------------------------------------------
0.4.2 (2022-10-17)
==================
### Cookiecutter Template
* Fix bug in authors field of pyproject.toml files.
* Update documentation.

-------------------------------------------------------------------------------
0.4.1 (2022-10-14)
==================
### Cookiecutter Template Enhancements
* Add `github_repo_owner` parameter to cookiecutter.json.
* Move software references to `extras` directory to separate them from project
  documentation.
* Update README template. Add status badges to README.

### Cookiecutter Development Enhancements
* Simplify logic for default values in cookiecutter.json.
* Update documentation.
* Update poetry.lock.

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
