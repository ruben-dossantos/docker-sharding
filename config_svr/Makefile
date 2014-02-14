all: 
	docker build -t mongo:config_svr .
	docker run -i -t mongo:config_svr /usr/bin/start-mongo
clean:
	./stop-mongo.sh
	docker rmi mongo:storage_test
