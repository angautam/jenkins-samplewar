node {

   stage('Cloning git') {

	git 'https://github.com/angautam/jenkins-samplewar.git'

      
   }

   stage('Build') {
	sh "docker build -t angautam/tomcat ./jenkins-samplewar"
      }


   stage('clean') {
    	sh 'docker ps -f name=mytomcat -q | xargs --no-run-if-empty docker container stop'
	sh 'docker container ls -a -fname=mytomcat -q | xargs -r docker container rm'
	
	}


   stage('Deployment') {
	
    sh "docker run -dP --name mytomcat -p 80:8080 angautam/tomcat"
       }

}


