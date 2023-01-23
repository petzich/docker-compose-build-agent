FROM docker:20.10.23

COPY requirements.txt .
RUN apk add --no-cache \
	findutils \
	git \
	make \
	openssh-client \
	py-pip \
	&& \
	pip install --no-cache-dir -r requirements.txt \
	&& \
	docker-compose -v
