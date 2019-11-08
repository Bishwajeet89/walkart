pipeline {
agent none
tools {
    maven "Maven 3.6.1"
    jdk "JDK8"
    //ANTHOME  "ant1.9.14"	
	
  }
stages {
	stage('GIT CHECKOUT') {
	 agent any
     options { timeout(time: 1, unit: 'HOURS') }
      steps {
	         echo 'Checkout SCM'	 
	         checkout scm
	   }
    }
    stage('BUILD') {
	   agent any
	  steps {
		     echo 'Build the Project'
			 sh 'echo "M2_HOME: ${maven}"'
			 sh 'echo "JAVA_HOME: ${jdk}"'
		         //sh 'echo "ANTHOME: ${ANTHOME}"'
			 sh 'mvn clean install'

		}
	}	
				

  }
}


