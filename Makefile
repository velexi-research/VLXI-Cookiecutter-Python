# --- Parameters

# Package name
PKG_DIR=TODO

# Testing parameters
NPROCS=auto

# --- Internal Parameters

# Testing parameters
PYTEST_SEARCH_PATHS=${PKG_DIR} bin
PYTEST_OPTIONS=-n ${NPROCS} --cov=${PKG_DIR}
PYTEST_PYLINT_OPTIONS=

# --- Targets

# Default target
all: fast-test

# Testing
fast-test fast-check:
	make test PYTEST_OPTIONS="-x ${PYTEST_OPTIONS}"

full-test full-check:
	make test PYTEST_PYLINT_OPTIONS="--pylint --pylint-error-types=EF";

test check:
	pycodestyle setup.py
	py.test ${PYTEST_SEARCH_PATHS} ${PYTEST_OPTIONS} ${PYTEST_PYLINT_OPTIONS}

.coverage:
	-make test

coverage-report: .coverage
	coverage report -m

coverage-html: .coverage
	coverage html -d coverage

# Package distribution
dist: clean
	python setup.py sdist --formats=gztar,zip

# Maintenance
clean:
	find . -name "__pycache__" -delete  # remove compiled python directories
	find . -name "*.pyc" -exec rm -f {} \;  # compiled python
	rm -rf .cache  # pytest
	rm -rf .coverage coverage # coverage
	rm -rf dist *.egg-info  # distribution

# Phony Targets
.PHONY: all clean erd dist \
        test fast-test full-test \
        check fast-check full-check \
        coverage-report coverage-html
