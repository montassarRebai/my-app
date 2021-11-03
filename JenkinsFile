pipeline {

    agent any


    stages {
      

        stage("Pull") {
            steps {
               script{
			       checkout([$class: 'GitSCM', branches: [[name: '*/test']]
	                  userRemoteConfigs: [[
						  credentialsId: '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',
						  url: 'https://github.com/montassarRebai/my-app.git']]])
			   }
                
            }
        }
        
       
        
       
    }
   
 
}
