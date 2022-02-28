# Compiling Bird2

git clone -b mh-bird-apkg https://gitlab.nic.cz/labs/bird.git

apt install python3-pip 

pip install apkg

python3 -m venv venv

source venv/bin/activate

apkg get-archive && apkg srcpkg -a pkg/archives/upstream/bird-2.0.9.tar.gz