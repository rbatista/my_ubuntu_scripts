# java 7
sudo apt-get install openjdk-7-jdk junit4 junit4-doc
wget --no-ckeck-certificate http://services.gradle.org/distributions/gradle-1.4-all.zip -O -
unzip gradle-1.4-all.zip
sudo mv gradle-1.4 /opt/gradle/
echo 'alias gg="/opt/gradle/bin/gradle --daemon"' >> ~/.profile
sudo update-java-alternatives -s java-1.7.0-openjdk-i386
