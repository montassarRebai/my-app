pipeline {

    agent any


    stages {
      

        stage("Pull") {
            steps {
               script{
			       checkout([$class: 'GitSCM', branches: [[name: '*/test']],
	                  userRemoteConfigs: [[
						  credentialsId: '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',
						  url: 'https://github.com/montassarRebai/my-app.git']]])
			   }
                
            }
        }
        
        stage("Build") {
            steps {
               script{
			sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml "
			   }
                
            }
        }
        
       
    }
   
 
}
