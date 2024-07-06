# DevOps Frontend Project

## Overview

This is a frontend application that is containerized using Docker and integrated with Jenkins for Continuous Integration (CI) and Continuous Deployment (CD).

## Usage

- pull image from Docerhub
```
docker pull ahmedashraf15/backehouse:v1
```
- run container from downloaded image
```
docker run -tdp 9000:80 ahmedashraf15/backehouse:v1
```
> [!NOTE]
> Version and host port are changable

- access website using URL
```
http://localhost:9000/
```

![Screenshot](images/live_project.png)
