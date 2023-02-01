# Docker Project (Hello World!)

## Description

This project includes a simple "Hello World" application written in Python (app.py) and the necessary configurations to build a Docker image and run the application in a container. The repository also includes a Makefile, a requirements.txt file, and a CircleCI configuration file (.circleci/config.yml) that lints the Dockerfile using Hadolint, the app.py file using Pylint, and validates the CircleCI configuration.

## Requirements

* Docker
* Make
* Python3
* Hadolint
* Pylint
* CircleCI CLI

## Installation

To install the CircleCI CLI on Linux, follow these steps:

1. Download the latest version of the CLI from the CircleCI CLI releases page: https://github.com/CircleCI-Public/circleci-cli/releases

2. Extract the contents of the archive to your local machine

```sh
tar -xvf circleci-cli_VERSION_linux_amd64.tar.gz
```

3. Move the circleci binary to a location in your PATH

```sh
sudo mv circleci /usr/local/bin/
```

4. Check the version of Circleci

```sh
circleci version
```

## Usage 

1. Clone the repository to your local machine

```sh
git https://github.com/MansouriAbdou96/docker_project.git
``` 

2. Setting up Environment 

```sh
make setup 
```

3. Installing the requirements and updating the pip 

```sh
make install 
```

4. Run the linting checks

```sh
make lint 
```

5. Validate the CircleCI configuration

```sh
make validate-circleci
```

6. Run the CircleCI build locally

```sh
make run-circleci-local
```

## Contributing

Feel free to submit pull requests and report any issues.

## License

This project is licensed under the MIT license.
