
publishChecks conclusion: 'NONE', name: 'testPlugin', summary: 'testPlugin', title: 'testPlugin'

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
