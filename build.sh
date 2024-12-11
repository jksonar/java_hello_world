Workspace=$1
appDirectory=$2
port=$3
cd ${Workspace}
/opt/apache-maven-3.9.6/bin/mvn clean package
cp -f ${Workspace}/s/target/java-helloworld-0.0.1-SNAPSHOT.jar ${appDirectory}
echo "process id" $(ps -ef |grep nohup|grep ${port}|awk '{print $2}')
sudo kill -15 $(ps -ef |grep nohup|grep ${port}|awk '{print $2}')
sudo nohup java -jar ${appDirectory}java-helloworld-0.0.1-SNAPSHOT.jar --server.port=${port} &