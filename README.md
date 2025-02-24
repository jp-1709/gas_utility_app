# Gas Utility Django Application

## Overview

This is a Django-based web application designed for a gas utility company to manage customer service requests. The application allows customers to submit service requests, track their status, and view account information. It also provides customer support representatives with tools to manage requests and assist customers.

## Features

- **Service Requests**: Customers can submit service requests online, including details and file attachments.
- **Request Tracking**: Customers can track the status of their requests, including submission and resolution dates.
- **Customer Support Tools**: Support representatives can manage and resolve customer requests.
- **Asynchronous Task Processing**: Celery and Redis handle background tasks like file processing and email notifications.
- **PostgreSQL Database**: A robust database for handling concurrent requests and high traffic.
- **HAProxy Load Balancer**: Distributes traffic across multiple app instances for scalability.

## Technologies Used

- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Backend**: Django, Celery, Redis, PostgreSQL
- **Deployment**: Docker, Docker Compose, HAProxy

## Directory Structure

gas_utility_app/
├── accounts/
├── service_requests/
├── customer_support/
├── static/
├── templates/
├── utils/
├── Dockerfile
├── docker-compose.yml
├── haproxy.cfg
├── manage.py
├── requirements.txt
└── gas_utility/
├── settings.py
├── urls.py
├── wsgi.py
├── celery.py
└── init.py

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/gas_utility_app.git
cd gas_utility_app

2. Build and Run the Application
bash
Copy
docker-compose up --build

3. Access the Application
Open your browser and navigate to http://localhost.
```
