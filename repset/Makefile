all: 
	docker build -t mongo:storage_test .
	docker run -t -i -dns 192.35.246.20 mongo:storage_test /usr/bin/install-mongo
clean:
	./stop-mongo.sh
	docker rmi mongo:storage_test
