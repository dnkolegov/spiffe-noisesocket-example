new:
	docker-compose build --no-cache
	docker-compose up -d
demo:
	docker-compose build
	docker-compose up -d
clean:
	docker-compose down
	screen -ls | grep harness | cut -d. -f1 | awk '{print $1}' | xargs --no-run-if-empty kill

