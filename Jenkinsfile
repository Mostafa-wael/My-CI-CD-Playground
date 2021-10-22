def gv

pipeline {
    agent any
    parameters {
        choice(name: 'VERSION', choices: ['ADT1', 'ADT2', 'ADT3'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description: '')
    }
    stages {
        stage("init") {
            steps {
                script {
                   gv = load "script.groovy" 
                }
                withGradle {
                    sh "chmod 777 gradlew"
                    sh "./gradlew -v"
                }
            }
        }
        stage("build") {
            steps {
                script {
                    gv.buildApp()
                }
                withGradle {
                    sh "./gradlew build"
                }
            }
        }
        stage("test") {
            when {
                expression {
                    params.executeTests
                }
            }
            steps {
                script {
                    gv.testApp()
                }
            }
        }
        stage("deploy") {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }
    }   
}
