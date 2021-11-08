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
