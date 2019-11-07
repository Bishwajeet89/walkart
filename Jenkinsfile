pipeline {
agent none
tools {
    maven "Maven 3.6.1"
    jdk "JDK8"
  }
stages {
	stage('GIT CHECKOUT') {
	 agent { node { lable 'master'} }
     options { timeout(time: 1, unit: 'HOURS') }
      steps {
	         echo 'Checkout SCM'	 
	         checkout scm
	   }
    }
    stage('BUILD') {
	   agent { node { lable 'master'} }
	  steps {
		     echo 'Build the Project'
			 sh 'echo "M2_HOME: ${M2_HOME}"'
			 sh 'echo "JAVA_HOME: ${JAVA_HOME}"'
			 sh 'mvn clean install'

		}
	}	
				

  }
}


