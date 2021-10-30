
publishChecks(name: 'MyCheck', conclusion: 'Success', Summary:'It works fine!')

 node
    {
        stage ('Checkout')
        {
            checkout scm
        }
        stage ('Build')
        {
            publishChecks(name: 'Stage Reporter', status: 'in_progress', Summary:'Building...')
        }
        stage ('Checkout')
        {
            publishChecks(name: 'Stage Reporter', status: 'in_progress', Summary:'Deploying...')
        }
    }
