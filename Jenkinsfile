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
