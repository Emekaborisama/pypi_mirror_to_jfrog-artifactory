# install python pypi mirror

pip install python-pypi-mirror

# download mirror and store it in a directory 
pypi-mirror download -d downloads scikit-learn==1.1.3 setuptools==66.1.1 wheel==0.38.4 matplotlib==3.6.3 numpy==1.24.0
pypi-mirror create -d downloads -m simple
