<include a CircleCI status badge, here>
[![CircleCI](https://circleci.com/gh/mehtaat/Udacity_MLMicroservies_API.svg?style=svg)](https://app.circleci.com/pipelines/github/mehtaat/Udacity_MLMicroservies_API?branch=main)

## Project Summary

In this project, a machine learning based prediction model is deployed. The model predicts house prices in Boston, USA given a set of features, such as the crime rate, average number of rooms, pupil-teacher ratio by town, to name few. The model is trained with the data set published in <a href="https://www.kaggle.com/c/boston-housing" class="mw-redirect" title="Kaggle site">Kaggle site.</a> The prediction model is developed as a flask python application, containerized using docker, and deployed locally using kubernetes for testing and debugging purposes. The quality of the code is tested by importing the projrct repo into CircleCI.

### Usage

The commands used in this project have been tested in a linux-based machine. First of all, clone the repo. Then, setup an isolated environment by running:

1. <code>python3 -m venv ~/.env1</code>
2. <code>source ~/.env1/bin/activate</code>

Install the required libraries by running <code>make install</code>. The `Makefile` includes instructions on environment setup and lint tests. The dependencies are listed in the <code>requirements.txt</code>. Now, to run the application, you have the following three choices:

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

To run the app in a Docker conatiner, you need to have a [Docker](https://www.docker.com) account and installation. The `Dockerfile` includes the instructions of how to containerize the application `app.py`. 

To run the app in a local Kubernetes cluster, you need to install [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/). To make house price predictions, you need to run the shell script `make_predictions.sh` while the app is up. In this script, you basically prepare the payload of a POST request with a json object that contains the concrete values (the input) of the features of the prediction model. 

For your reference, `docker_out.txt` and `kubernetes_out.txt` give examples of the expected output of running the app in Docker and Kubernetes, respectively. Finally, to share the created Docker image, you can upload it to the Docker hub by running the script `upload_docker.sh`. The directory `.circleci` has one configuration file `config.yml` that includes the necessary instructions to setup a CICD pipeline to fully automate the process.
Also added Screenshot folder that contains various screen shots taken at every step while working on this Project.
