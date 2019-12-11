[![CircleCI](https://circleci.com/gh/rodrigorevuelta/devops-ml.svg?style=svg)](https://circleci.com/gh/rodrigorevuelta/devops-ml)

##Summary
This repo contains the files to deploy on python venv, docker and kubernetes a machine learning microservice api thas has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on (more info on www.kaggle.com/c/boston-housing)

##Instructions

Local deployment: 
 - run $ make setup && source ~/.devop&& make
 - in other console call to the script make_predictions.sh (using url:http://localhost:$PORT/predict)

Docker deployment:
 - run $./run_docker.sh and wait to run the container
 - in other console call to the script make_predictions.sh (using url:http://localhost:$PORT/predict)
 - to push the repo in the docker hub call the script $./upload_docker.sh

Kubernetes deployment:
 - run $./run_kubernetes.sh and wait for the running status of the pod
 - call to the script make_prediction.sh (using url:http://localhost:$PORT/api/v1/namespaces/default/services/devops-ml/proxy/predict)
 - you can see the logs of the service doing $kubectl logs service/devops-ml

##Files in the repo
app.py -> application that uses flask, scikit-learn and pandas to get a prediction (in this case use the model about price housing in boston)
model_data/bostou_housing_prediction.joblib -> the trained model with data about price housing in boston
model_data/housing.csv -> data about prices
Dockerfile -> file to build the docker image
Makefile -> file to build local service
make_predictions.sh -> script for call the app.py
output_txt_files->output of build the service in docker and kubernetes
requirements.txt -> libraries needed by app.py
run_docker.sh -> script to help the build of the docker image
upload_docker.sh -> script to help to upload the image to docker hub
run_kubernetes.sh -> script to help the deploy of the service in kubernetes
tests/ -> files to test the service
README.md -> this file
