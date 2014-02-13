all: 
	docker build -t mongo:secondset .
	docker run -t -i mongo:secondset /usr/bin/start-mongo
clean:
	./stop-mongo.sh
	docker rmi mongo:storage_test
