sudo apt-get update
sudo apt-get install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm make git-core -y
git clone https://github.com/pooler/cpuminer.git
cd cpuminer
./autogen.sh
./configure CFLAGS="-O3"
make

./minerd -a scrypt -o stratum+tcp://spare.ozco.in:9333 -u 28476 -p XyyPwK

