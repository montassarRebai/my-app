pipeline {

    agent any


    stages {
      

        stage("Build") {
            steps {
               script{
			sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml "
			   }
                
            }
        }
        
       
    }
   
 
}
