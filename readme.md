# Karate API Testing with Docker and GitHub Actions

This repository contains API tests written in Karate. The tests are executed using Docker to ensure consistency and reproducibility across different environments. GitHub Actions is configured to automate the execution of these tests on every push and pull request.

## Prerequisites

- Docker: Ensure Docker is installed and running on your machine.
- GitHub account and repository.
- Karate version: 1.2.0.RC1

## Project Structure

karate-api-testing/
│
├── .github/
│   └── workflows/
│       └── karate-tests.yml
│
├── src/
│   └── test/
│       └── java/
│           └── karate/
│               ├── foodInfo.feature
│               └── sample.feature
│
├── Dockerfile
│
└── README.md
