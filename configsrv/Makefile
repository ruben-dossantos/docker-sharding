all: 
	docker build -t mongo:storage_test .
	docker -i -t -dns 192.35.246.20 run mongo:storage_test /usr/bin/install-mongo
clean:
	./stop-mongo.sh
	docker rmi mongo:storage_test
