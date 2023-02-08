pipeline{
    agent any
    stages{
        stage("Build"){
            steps{
                sh '''
                    rm -rf CI-Pipeline
                    git clone https://github.com/iodine123/CI-Pipeline
                    cd CI-Pipeline
                    docker login -u iodinehanifan -p ${password-iodine} https://hub.docker.com/
                    docker build -t iodinehanifan/app-nodejs:v1 .
                    docker push iodinehanifan/app-nodejs:v1
                    echo "Success"
                    '''
            }
        }
    }
}