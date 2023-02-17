
docker run -e DISPLAY=host.docker.internal:0 --name=jmeter-v1 --net=host \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/input/jmx:/opt/test/input/jmx \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/input/testdata:/opt/test/input/testdata \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/report/html:/opt/test/report/html \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/report/jtl:/opt/test/report/jtl \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/report/outputputdata:/opt/test/report/outputdata \
-it -d jmeter:v1

#-it -d lukechi1219/jmeter:v1
