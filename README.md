# Demo Application

This is an application by [Coveros](https://www.coveros.com/) designed to demonstrate good software practices and agile principles. While the focus is on working software over exhaustive documentation, this project is well documented and showcases many essential development techniques. 

### Collaborators
1.Salem Shadfan
2. Nader Naboulsi

## Quick Start

1. **Install [Java](https://www.java.com/en/download/)** if you don't already have it.
2. **Clone or download the repository:**  
   - If you download a ZIP file, unzip it to a directory.
3. **Run the Application:**  
   - Open a command line in the top directory of the repo.
   - On Mac/Linux:  
     ```bash
     ./gradlew apprun
     ```
   - On Windows:  
     ```bash
     gradlew apprun
     ```
4. **Access the Application:**  
   - Open your browser and go to [http://localhost:8080/demo](http://localhost:8080/demo).

## Summary

The demo consists of a simple web application along with a comprehensive suite of tests. Its goals include:
- **Cross-platform compatibility**
- **Simplicity and minimal system requirements**
- **Fast setup and execution**
- **High test coverage**  
- **Demonstration of multiple business domains and techniques**

Key techniques and features:
- **Unit Tests:** Using Test-Driven Development (TDD) with JUnit and Mockito.
- **UI Tests:** Employing Selenium, Cucumber, and Behave for both API and user interface testing.
- **Integration Tests:** Testing with the H2 database.
- **Database Versioning:** Handled by Flyway.
- **Static Analysis & Security:** Using OWASP DependencyCheck and SonarQube.
- **Hot-swap Code:** Enabled through Gretty.
- **Mutation Testing:** With Pitest.
- **CI/CD Pipeline:** Fully demonstrated using Jenkins.

## Table of Contents

1. [Optional Dependencies](#optional-dependencies)
2. [Chromedriver Installation Notes](#chromedriver-installation-notes)
3. [Python Installation Notes](#python-installation-notes)
4. [Build and Run Tests](#to-build-and-run-tests)
5. [Run the Application](#to-run-the-web-application)
6. [Run API and UI Tests](#to-run-api-and-ui-tests)
7. [Summary of Relevant Gradle Commands](#summary-of-relevant-gradle-commands)
8. [CI/CD Pipeline](#the-whole-shebang---ci-cd-pipeline)
9. [Screenshots](#screenshots)

## Optional Dependencies

For API testing and Selenium tests, please install:
- [Python](https://www.python.org/downloads/)
- [Chromedriver](http://chromedriver.chromium.org/downloads)
- [Google Chrome](https://www.google.com/chrome/)

## Chromedriver Installation Notes

- Ensure that the [Chromedriver](https://chromedriver.chromium.org/) executable is installed in one of the directories included in your system’s PATH.
- To check your PATH:
  - **Windows:**  
    ```bash
    echo %PATH%
    ```
  - **Mac/Linux:**  
    ```bash
    echo $PATH
    ```
- Test the installation by running `chromedriver` in the command line; you should see a message indicating that ChromeDriver is starting.

## Python Installation Notes

1. Download [Python](https://www.python.org/downloads/).
2. Install pip if needed by running:
   ```bash
   python get-pip.py
