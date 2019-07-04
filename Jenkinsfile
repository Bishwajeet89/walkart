pipeline
{
agent any

 stages
 {
   stage('GIT Checkout')
   {
    steps
    {
     checkout scm
    }
   }

  stage('Build')
  {
   steps 
   {
    sh '/hom/bish/Distros/apache-maven-3.6.1/bin/mvn install'
   }
  } 
 
 }

}
