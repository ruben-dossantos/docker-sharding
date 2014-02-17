all:
	docker build -t ruben:mongo mongo
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
	sh write_ip.sh
	sh wait_configdb.sh
	sh wait_firstset.sh
	sh wait_secondset.sh
	sh wait_thirdset.sh
	sh write_configInit.sh
	sh write_firstsetInit.sh
	sh write_secondsetInit.sh
	sh write thirdsetInit.sh
	docker build -t mongo:mongoserver master
	docker run -i -t mongo:mongoserver /usr/bin/start-mongo

