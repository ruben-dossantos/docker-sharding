all: 
	docker build -t mongo:thirdset .
	docker run -t -i mongo:thirdset /usr/bin/start-mongo
clean:
	./stop-mongo.sh
	docker rmi mongo:storage_test
