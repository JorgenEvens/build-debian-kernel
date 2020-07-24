#
# Makefile
# jorgen, 2020-01-02 00:50
#

all: docker_image kernel
	echo "Kernel ready"

docker_image:
	docker build --pull . -t jorgenevens/build-deb-kernel

kernel:
	docker run --rm -t -i -v `pwd`/output:/data:rw jorgenevens/build-deb-kernel /compile ${KERNEL}

