# thrones_db

To run this project from scratch, one must pull the code using git (make sure you get all the git submodules), have java 8 installed, have maven installed, and have docker installed.

The tricky part is that not only do you need a version of docker that's advanced enough right now that it's not yet in most standard package managers, but also that you need to run that advanced verison of docker into experimental mode.  The install scripts included with this repository may help.

Once everything is installed, one only needs to run the swarm_run.sh, a single command and that's it.

--------------------------------------------------

Protips for using docker swarm with docker compose v3



a service's full name is its swarm-internal url, which is
	<swarm_name> + <_service's_short_name>

a service's full name be easily found with "docker service ls"


the swarm's name is the last argument of the "docker deploy --compose-file" command

the service's short name is the name of the yml-object that is your service in your swarm-compose.yml.  it is the name that is directly under the level of "services" in the yml hierarchy.  it is NOT the image name.


--

in the build script, where you build the image (not the dockerfile, the swarm_run.sh), that image name needs to match the image name in the swarm-compose.yml


--

Slightly older version of docker but still good for this project, and still too new for amazon linux's yum package manager:
https://get.docker.com/builds/Linux/x86_64/docker-1.13.1.tgz
