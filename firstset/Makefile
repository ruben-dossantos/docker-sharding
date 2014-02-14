all: 
	docker build -t mongo:firstset .
	docker run -t -i mongo:firstset /usr/bin/start-mongo
clean:
	./stop-mongo.sh
	docker rmi mongo:storage_test
