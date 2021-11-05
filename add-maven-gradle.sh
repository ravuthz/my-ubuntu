#!/bin/sh

# wget https://www-us.apache.org/dist/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.tar.gz -P /tmp

# https://maven.apache.org/download.cgi

wget https://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.tar.gz -P ~/

sudo tar xf ~/apache-maven-*.tar.gz -C /opt

sudo ln -s /opt/apache-maven-3.8.3 /opt/maven

which java

ll /usr/lib/jvm

# sudo nano /etc/profile.d/maven.sh

sudo -s

cat > /etc/profile.d/maven.sh <<EOL
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}
EOL

exit

sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh

mvn -version


wget https://downloads.gradle-dn.com/distributions/gradle-6.9.1-bin.zip -P ~/
sudo unzip ~/gradle-6.9.1-bin.zip
sudo mv ~/gradle-6.9.1 /opt/gradle

sudo -s

cat > /etc/profile.d/gradle.sh <<EOL
export PATH=/opt/gradle/bin:$PATH
EOL

exit

sudo chmod +x /etc/profile.d/gradle.sh
source /etc/profile.d/gradle.sh
