                      

# 🧠 Architecture Overview – Scalable Kubernetes Microservices with CI/CD on AWS

This document provides a high-level overview of the architecture implemented in this project.

---

## 🏗️ Infrastructure

All infrastructure is defined using **Terraform**, and deployed on **AWS**.

Key AWS services:
- **EKS**: Managed Kubernetes cluster
- **EC2**: Worker nodes
- **IAM**: Role-based access control
- **S3**: Terraform backend (optional)
- **Secrets Manager** or **Vault**: Secrets and token storage

---

## 🐳 Microservices

Two Dockerized services:
- `frontend`: React-based UI (or your frontend)
- `backend`: Python Flask API (or your backend)

Each service is containerized using Docker and deployed via **Helm**.

---

## ☸️ Kubernetes (EKS)

Each microservice is deployed to EKS with:
- Independent deployments
- Services (ClusterIP or LoadBalancer)
- ConfigMaps for environment configs
- Auto-scaling with `HorizontalPodAutoscaler`

---

## 🔐 Secrets Management – Vault

Secrets (e.g. DB passwords, API keys) are managed securely via:
- **Vault config.hcl** for policy
- Secrets in `secrets.json`
- Injected via Kubernetes or GitHub Actions

---

## ⚙️ CI/CD Pipeline

CI/CD via **GitHub Actions**:
- On push to `main`, images built with `buildx`
- Pushed to DockerHub
- K8s deployment updated via `kubectl set image`

All secrets are stored in GitHub repo’s **Secrets** tab:
- `DOCKER_USERNAME`, `DOCKER_PASSWORD`
- `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`

---

## 📊 Diagrams

See visual representation:  
📍 `docs/diagrams/k8s-diagram.png`

---

## 🔒 Security Practices

- Least-privilege IAM roles
- Externalized secrets
- No hardcoded credentials
- Secure CI/CD with GitHub Secrets

---

## 👨‍💻 Designed & Developed by:

**M. Sulaiman Amir**  
🔗 [LinkedIn](https://www.linkedin.com/in/m-sulaiman-amir-ab043632b/) | ✉️ sullemaan007@gmail.com | 🌐 sulaimanamir.com
