echo "installing java..."
sudo apt-get update
#sudo apt-get install oracle-java7-installer
sudo apt-get -y install openjdk-7-jdk #openjdk-7-jre-headless #openjdk-7-jdk #default-jre

echo "install curl..."
sudo apt-get -y install curl

echo "install jmeter..."
curl -L -O http://mirror.switch.ch/mirror/apache/dist//jmeter/binaries/apache-jmeter-2.11.tgz && tar xzf apache-jmeter-2.11.tgz
