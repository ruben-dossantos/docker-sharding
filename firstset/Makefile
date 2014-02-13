all: 
	docker build -t mongo:storage_test .
	docker run -t -i mongo:storage_test /usr/bin/start-mongo
clean:
	./stop-mongo.sh
	docker rmi mongo:storage_test
