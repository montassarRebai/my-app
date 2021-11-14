pipeline {

    agent any


    stages {
      
       stage('Install Local Envirement ') {
             steps{
                script{
                    sh "sudo npm install"
                }
            }
        }

        stage("App-Build") {
            steps {
               script{
			sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml -u monta "
			   }
                
            }
        }
        
        stage("Building Docker Image") {
            steps {
               script{
			sh "ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml -u monta "
			   }
                
            }
        }
         
     stage(' Pushing Image to DockerHub') {
             steps{
                script{
                    sh "ansible-playbook ansible/docker-registry.yml -i ansible/inventory/host.yml -u monta"
                }
            }
        }   
     
     
     
       
    }
   
 
}
