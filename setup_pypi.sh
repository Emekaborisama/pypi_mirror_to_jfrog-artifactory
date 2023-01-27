
# change your configuration to use jfrog pypi artifactory 


# create a virtual env and activate it
python -m venv venv
source venv/bin/activate


# set your pypi index e.g https://saturncloud.jfrog.io/artifactory/api/pypi/
pip config --user set global.index <jfrog artifact index>


# set your pypi index url e.g https://saturncloud.jfrog.io/artifactory/api/pypi/pypimirror-pypi/simple
pip config --user set global.index-url <jfrog artifact index url>

# set your trusted host 
pip config --user set global.trusted-host <org name>