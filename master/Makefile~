all: 
	docker build -t mongo:storage_test .
	docker run -t -i -dns 192.35.246.20 -p 127.0.0.1:37017:27020 -v /var/lib/mongodb/sharding/master:/data/db mongo:storage_test /usr/bin/install-mongo
clean:
	./stop-mongo.sh
	docker rmi mongo:storage_test

