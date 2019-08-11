# Steps to run the pipeline in Jenkins.

1. Ensure the below software has already been installed on your machine. 

 -- jenkins CI
 -- Docker engine
 -- GIT tool 
 
 
2. Add the docker group to jenkins user so jenkins can run docker engine in the pipeline.

sudo usermod -a -G docker jenkins

3. Login to jenkins and select the pipeline project and select the "pipeline from SCM option"

4. Provide the git repo as https://github.com/angautam/jenkins-samplewar.git

5. Keep rest as default.

6. click on "build now" to run the pipeline.

7. Application will be available on below URL.

http://<your_machineIP>:80/sample/
