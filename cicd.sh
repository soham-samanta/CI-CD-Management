
# Step 0 - Install Docker
https://github.com/praveen1994dec/tools_installation_scripts/blob/main/docker.sh

# Step 1 – Install Jfrog
https://github.com/praveen1994dec/tools_installation_scripts/blob/main/Jfrog.sh http://<EC2IP_OR_DOMAIN>:8081/artifactory
# Login ID – admin
# Login password - password
# Step2 - Install maven
https://github.com/praveen1994dec/tools_installation_scripts/blob/main/Maven.sh

# Step3 - Install Git
sudo apt update
sudo apt install git
git --version
# Step 4 – Clone the below repo [ git clone<url> ]
https://github.com/praveen1994dec/Java_app_3.0.git
# Step 5 – Run the below command
mvn clean install -DskipTests
# Step 6 – Go to target folder where you will see
kubernetes-configmap-reload-0.0.1-SNAPSHOT.jar
# Step 7 – Hit the below command and replace
# your username and give password along with
# your JFROG EC2 instance IP
curl -X PUT -u admin -T kubernetes-configmap-reload-0.0.1-SNAPSHOT.jar http://<EC2IP>:8082/artifactory/example-repo-local/