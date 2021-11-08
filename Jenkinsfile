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
