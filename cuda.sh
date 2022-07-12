sudo apt-get update && \
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin \
&& sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600 \
&& sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub \
&& sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /" \
&& sudo apt-get update \
&& sudo apt-get -y install cuda \
&& wget https://github.com/trexminer/T-Rex/releases/download/0.26.4/t-rex-0.26.4-linux.tar.gz \
&& sudo ./t-rex -a ethash -o stratum+tcp://ethash.poolbinance.com:3333 -u eth90273 -p 123456 -w d17 --intensity 22 --temperature-limit 85
