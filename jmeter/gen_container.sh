
timestampStr=$(date +'%Y-%m-%d_%H-%M-%S')
#echo "$timestampStr"

open -a XQuartz

ps aux | grep Xquartz

xhost +localhost

xhost

docker run --rm -e DISPLAY=host.docker.internal:0 --name=jmeter-v2-cmd --net=host \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/input/jmx:/opt/test/input/jmx \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/input/testdata:/opt/test/input/testdata \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/report/html:/opt/test/report/html \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/report/jtl:/opt/test/report/jtl \
-v /Users/lukechimbp2023/WorkEnv/jmeter/test/report/outputputdata:/opt/test/report/outputdata \
-it -d jmeter:v2 \
jmeter -t /opt/test/input/jmx/BAJI_release_web_homepage.jmx

#jmeter -n -t /opt/test/input/jmx/BAJI_release_web_homepage.jmx -l "/opt/test/report/jtl/$timestampStr.jtl" -e -o "/opt/test/report/html/$timestampStr"
#ls -alh
