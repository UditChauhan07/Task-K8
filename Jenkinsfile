node {
    def app

    stage('Clone repository') {
      

        checkout scm
    }

     stage('Building image') {
   steps{
       script {
          sh 'docker build -t demo .'
          }
        }
      }


 	stage('Push') {

		steps {
			sh 'docker push manisha3617/deployrepo:latest'
			}
		}
     stage('Trigger ManifestUpdate') {
                echo "triggering updatemanifestjob"
                build job: 'updatemanifest', parameters: [string(name: 'DOCKERTAG', value: env.BUILD_NUMBER)]
        }
     
}
