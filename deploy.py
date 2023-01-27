import subprocess
from artifactory import ArtifactoryPath
path = ArtifactoryPath(
    "< oyur jfrog artifact repo url>",apikey="< your jfrog artifactory api key>")


# replace these file names with your preffered file name you want to zip
subprocess.run(['zip', '-r', 'downloads.zip', "downloads"])
subprocess.run(['zip', '-r', 'simple.zip', "simple"])
subprocess.run(['zip', '-r', 'pipefile.zip', "Pipfile"])


# upload to jfrog and unzip in the process 
path.deploy_file("simple.zip", explode_archive=True)

path.deploy_file("downloads.zip", explode_archive=True)
path.deploy_file("pipefile.zip", explode_archive=True)

path.touch()

