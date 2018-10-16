REPOSITORY_NAME := dockerinaction/ch11_all-in-one

BUILD_TIMESTAMP_UTC := $(shell date -u +'%Y%m%d-%H%M')
BUILD_COMMIT_SHORT := $(shell git rev-parse --short HEAD)
BUILD_ID=$(BUILD_TIMESTAMP_UTC)-$(BUILD_COMMIT_SHORT)

.PHONY build:
build:
	echo Building repository $(REPOSITORY_NAME) tag $(BUILD_ID)
	docker image build -t $(REPOSITORY_NAME):latest -t $(REPOSITORY_NAME):${BUILD_ID} .
