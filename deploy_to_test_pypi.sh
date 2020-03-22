#!/bin/bash
#
# Deploy to PyPI for both source and wheel
#

echo $TWINE_USERNAME
rm -Rf build/ dist/ wiremock.egg-info/ || true
python3 setup.py sdist bdist_wheel
python3 -m twine upload --non-interactive --repository-url https://test.pypi.org/legacy/ dist/*
rm -Rf build/ dist/ wiremock.egg-info/ || true
