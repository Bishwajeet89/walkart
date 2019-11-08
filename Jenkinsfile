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
	    environment { ANTHOME = tool "ant1.9.14" }
	  steps {
		     echo 'Build the Project'
			 sh 'echo "M2_HOME: ${M2_HOME}"'
			 sh 'echo "JAVA_HOME: ${JAVA_HOME}"'
		         sh 'echo "ANTHOME: ${ANTHOME}"'
			 sh 'mvn clean install'

		}
	}	
				

  }
}


