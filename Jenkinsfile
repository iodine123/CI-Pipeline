pipeline{
    agent any
    environment{
        DOCKERHUB_CREDENTIALS=credentials('infiniti-cicd')
    }
    stages{
        stage("Build"){
            steps{
                sh '''
                    rm -rf CI-Pipeline
                    git clone https://github.com/iodine123/CI-Pipeline
                    cd CI-Pipeline
                    echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin
                    docker build -t iodinehanifan/app-nodejs:v1 .
                    docker push iodinehanifan/app-nodejs:v1
                    echo "Success"
                    '''
            }
        }
    }
}