[![CircleCI](https://circleci.com/gh/wiflore/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/wiflore/project-ml-microservice-kubernetes)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Files explanation


app.py: Flask app that serves out predictions about housing prices through API calls . 
Dockerfile: Dockerfile for building the image . 
Makefile: includes instructions on environment setup and lint tests . 
run_docker.sh: file to be able to get Docker running, locally . 
run_kubernetes.sh: file to run the app in kubernetes . 
upload_docker.sh: file to upload the image to docker . 
make_prediction.sh: Send a request to the Python flask app to get a prediction . 
config.yml: CircleCI configuration file for running the tests . 

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
