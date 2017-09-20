# --- Parameters

# Package name
PKG_DIR=TODO

# Testing parameters
UNIT_TEST_OPTIONS=

# --- Targets

# Testing
fast-check fast-test:
	make check UNIT_TEST_OPTIONS="--failfast"

check test:
	coverage run --omit="*site-packages*" -m unittest discover ${UNIT_TEST_OPTIONS} -s ${PKG_DIR} -p '*tests.py' -t ${PKG_DIR};

coverage-report: .coverage
	coverage report -m --omit="*/test/*","*/tests/*"

coverage-html: .coverage
	coverage html -d coverage --omit="*/test/*","*/tests/*"

# Code quality
pylint:
	pylint ${PKG_DIR} bin/*

pep8:
	pep8 ${PKG_DIR} bin/*

# Package distribution
dist: clean
	python setup.py sdist --formats=gztar,zip

# Maintenance
clean:
	find . -name "__pycache__" -delete  # remove compiled python directories
	find . -name "*.pyc" -exec rm -f {} \;  # compiled python
	rm -rf .coverage coverage # coverage
	rm -rf MANIFEST dist  # distribution
