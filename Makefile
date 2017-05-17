all: builder binary image clean

builder:
	docker build -t image-builder -f Dockerfile.build .

binary:
	docker run --rm -v `pwd`:/src image-builder /src/build.sh

image:
	docker build -t caddy-arm -f Dockerfile .

clean:
	rm caddy
	docker rmi image-builder

tar:
	docker save -o image.tar caddy-arm
 
