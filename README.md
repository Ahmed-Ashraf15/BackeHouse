# DevOps Bakehouse Frontend Project

## Overview

This is a frontend application that is containerized using Docker and integrated with Jenkins for Continuous Integration (CI) and Continuous Deployment (CD) on a slave in AWS.

## Prerequisites

- configure EC2 instance as a slave on Jenkins
- install Docker on EC2 instance

## Details

1. project using Jenkins pipeline
   . consist from two stages CI/CD
2. CI stage run docker file to build the image and push it to docker hub repository
3. CD stage pull the image from docker hub then run container with host port 9000

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
> Version and host port are changeable
<br>

![Screenshot](images/live_project.png)
