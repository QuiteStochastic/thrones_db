# thrones_db


Protips



a service's full name is its swarm-internal url, which is
	<swarm_name> + <_service's_short_name>

a service's full name be easily found with "docker service ls"


the swarm's name is the last argument of the "docker deploy --compose-file" command

the service's short name is the name of the yml-object that is your service in your swarm-compose.yml.  it is the name that is directly under the level of "services" in the yml hierarchy.  it is NOT the image name.


--

in the build script, where you build the image, that image name needs to match the image name in the swarm-compose.yml


--

Slightly older version of docker:
https://get.docker.com/builds/Linux/x86_64/docker-1.13.1.tgz
