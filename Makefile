fetch:
		curl -s https://api.github.com/repos/freetonik/underblog/releases/latest \
		| grep download.*linux-amd64.* \
		| cut -d '"' -f 4 \
		| wget -qi -
		tar -xvf underblog-linux-amd64-v*.tar.gz
		mv linux-amd64/underblog .

build:
		./underblog