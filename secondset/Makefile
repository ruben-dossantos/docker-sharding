all: 
	docker build -t mongo:secondset .
	# docker run -t -i -dns 192.35.246.20 mongo:storage_test /usr/bin/install-mongo
	docker run -t -i mongo:secondset /usr/bin/start-mongo
clean:
	./stop-mongo.sh
	docker rmi mongo:storage_test
