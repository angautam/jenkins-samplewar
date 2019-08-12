def workspace = "${home}/workspace/build-docker-jenkins"
def workdir = "${workspace}/src/localhost/docker-jenkins/"



podTemplate(label: label,
        containers: [
                containerTemplate(name: 'jnlp', image: 'jenkins/jnlp-slave:alpine'),
		containerTemplate(name: 'kubectl', image: 'lachlanevenson/k8s-kubectl:v1.8.8', command: 'cat', ttyEnabled: true),
                containerTemplate(name: 'docker', image: 'docker:dind', command: 'cat', ttyEnabled: true, privileged: true)
        ]) {

    node(label) {
        dir(workdir) {
            stage('Checkout') {
                timeout(time: 3, unit: 'MINUTES') {
                    checkout scm
                }
            }

            stage('Docker Build') {
                container('docker') {
                    echo "Building docker image..."
                    sh "docker build -t angautam/tomcat -f jenkins-samplewar/Dockerfile ."
                }
            }
	
            stage('Run Application') {
                container('kubectl') {
      		    sh "kubectl create -f deploy.yaml"
                }
            }



        }
    }
}
