FROM docker:20.10.7

COPY requirements.txt .
RUN apk add --no-cache \
	git \
	make \
	openssh-client \
	py-pip \
	&& \
	pip install --no-cache-dir -r requirements.txt \
	&& \
	docker-compose -v
