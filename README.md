
Cloud Foundry:

	https://github.com/cloudfoundry/bosh-lite

	cf api —-skip-ssl-validation api.10.244.0.34.xip.io

	cf login (admin, admin)

	cf create-org myorg
	cf create-space myspace
	cf target -o myorg -s myspace


	cf push 




Docker:

	https://github.com/boot2docker/boot2docker
	
	Stop running containers: docker stop $(docker ps -a -q)

	Delete stopped containers: docker rm $(docker ps -a -q)

	Delete untagged images:	docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
	
	Build: docker build -t bjornno/app .
	
	run: docker run -p 80:9292 bjornno/app