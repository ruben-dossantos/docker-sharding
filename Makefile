all:
	docker build -t ruben:mongo mongo
	docker build -t mongo:mongoserver master
	docker build -t mongo:config_svr config_svr
	docker build -t mongo:firstset firstset
	docker build -t mongo:secondset secondset
	docker build -t mongo:thirdset thirdset

	docker run -d mongo:config_svr /usr/bin/start-mongo
	docker run -d mongo:config_svr /usr/bin/start-mongo
	docker run -d mongo:config_svr /usr/bin/start-mongo
	docker run -d mongo:firstset /usr/bin/start-mongo
	docker run -d mongo:firstset /usr/bin/start-mongo
	docker run -d mongo:firstset /usr/bin/start-mongo
	docker run -d mongo:secondset /usr/bin/start-mongo
	docker run -d mongo:secondset /usr/bin/start-mongo
	docker run -d mongo:secondset /usr/bin/start-mongo
	docker run -d mongo:thirdset /usr/bin/start-mongo
	docker run -d mongo:thirdset /usr/bin/start-mongo
	docker run -d mongo:thirdset /usr/bin/start-mongo
	docker run -i -t mongo:mongoserver /usr/bin/start-mongo

