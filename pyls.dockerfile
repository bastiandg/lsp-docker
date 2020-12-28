FROM python:alpine
RUN apk add \
			--virtual build-essential \
			--no-cache \
			build-base \
			python3-dev \
			openssl-dev \
			libffi-dev \
			gcc && \
	pip install \
			pyls-black \
			black \
			python-language-server[all] \
			flake8 && \
	apk del build-essential
