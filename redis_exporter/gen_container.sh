
docker run --rm --name=redis_exporter -p 9121:9121 \
-idt redis_exporter:v1 \
redis_exporter \
-redis.addr 10.100.10.101:7000 \
--redis.password dsaq1234 \
-web.listen-address 172.17.0.2:9121

