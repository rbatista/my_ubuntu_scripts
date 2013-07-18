# java 7
sudo apt-get install -y --quiet openjdk-7-jdk junit4 junit4-doc
wget -qO- -O tmp.zip --no-check-certificate http://services.gradle.org/distributions/gradle-1.4-all.zip && unzip tmp.zip && rm tmp.zip
sudo mv gradle-1.4 /opt/gradle/
echo 'alias gg="/opt/gradle/bin/gradle --daemon"' >> ~/.profile
source ~/.profile
sudo update-java-alternatives -s $(update-java-alternatives -l | grep "java-1.7" | cut -d ' ' -f1)
