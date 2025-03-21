# Real-Time Data Streaming and Monitoring Platform on GCP

## Overview
This project demonstrates a cloud-native platform for real-time data streaming and monitoring using Kafka, GKE, Prometheus, Grafana, and Jenkins.

## Key Features
- **Infrastructure-as-Code**: Terraform is used to provision and manage GCP resources.
- **Real-Time Data Streaming**: Kafka handles live data streams.
- **Monitoring and Visualization**: Prometheus and Grafana provide real-time insights.
- **CI/CD Automation**: Jenkins automates the build and deployment process.

## How to Use
1. Clone the repository.
2. Set up GCP credentials.
3. Run `terraform init` and `terraform apply` to provision infrastructure.
4. Deploy Kubernetes manifests.
5. Run the Jenkins pipeline to build and deploy the application.