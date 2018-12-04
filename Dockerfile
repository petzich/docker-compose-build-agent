FROM docker:18.09

COPY requirements.txt .
RUN apk add --no-cache \
	git \
	make \
	py-pip \
	&& \
	pip install --no-cache-dir -r requirements.txt \
	&& \
	docker-compose -v
