pipeline {

    agent any


    stages {
      
       stage('Install') {
             steps{
                script{
                    sh "sudo npm install"
                }
            }
        }

        stage("Build") {
            steps {
               script{
			sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml -u monta "
			   }
                
            }
        }
        
        stage("Docker") {
            steps {
               script{
			sh "ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml -u monta "
			   }
                
            }
        }
         
        
       
    }
   
 
}
