pipeline{
    agent any
    stages{
        stage("Build"){
            steps{
                sh '''
                    rm -rf CI-Pipeline
                    git clone https://github.com/iodine123/CI-Pipeline
                    cd CI-Pipeline
                    docker-compose build
                    echo "Success"
                    '''
            }
        }
    }
}