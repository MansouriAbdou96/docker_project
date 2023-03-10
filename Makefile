setup: 
	python3 -m venv ~/.udacity-devops
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt 
		
test:
	# python -m pytest -vv --cov=myrepolib tests/*.py
	# python -m pytest --nbval notebook.ipynb
	
validate-circleci:
	circleci config process .circleci/config.yml
	
run-circleci-local:
	circleci local execute build 

lint:
	hadolint --ignore DL3013 Dockerfile
	pylint --disable=R,C,W1203 app.py
	
all: install lint test
