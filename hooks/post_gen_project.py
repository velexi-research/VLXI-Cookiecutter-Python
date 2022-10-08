"""
Apply post-generation project configuration and setup.
"""
# --- Imports

# Standard library
import os
from pathlib import Path
import subprocess


# --- Constants

_PROJECT_DIRECTORY = Path.cwd()

# --- Utility functions


def _remove_file(*filepath):
    """
    Remove file relative to _PROJECT_DIRECTORY.
    """
    try:
        Path(_PROJECT_DIRECTORY, *filepath).unlink()
    except FileNotFoundError:
        pass


# --- Main program

if __name__ == "__main__":

    # --- Preparations

    # Change to project directory
    os.chdir(_PROJECT_DIRECTORY)

    # --- Update project template files based on user configuration

    if "{{ cookiecutter.license }}" != "Apache License 2.0":
        _remove_file("NOTICE")

    # --- Set up Git repository for project

    # Initialize Git repository
    cmd = ["git", "init"]
    subprocess.run(cmd, check=True)

    # Commit cookiecutter files
    cmd = ["git", "add", "."]
    subprocess.run(cmd, check=True)

    cmd = ["git", "commit", "-m", "Initial commit."]
    subprocess.run(cmd, check=True)

    # Create branch for deployment of package documentation to GitHub pages
    if "{{ cookiecutter.enable_github_pages }}" == "yes":

        # Create gh-pages branch
        cmd = ["git", "checkout", "-b", "gh-pages"]
        subprocess.run(cmd, check=True)

        # Change back to "main" branch
        cmd = ["git", "checkout", "main"]
        subprocess.run(cmd, check=True)

    # --- Install Git pre-commit hooks.

    cmd = ["pre-commit", "install"]
    subprocess.run(cmd, check=True)
