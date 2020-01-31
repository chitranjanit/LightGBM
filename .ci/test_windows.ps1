conda create -q -y -n test_env python=3.8
activate test_env

conda info

conda list --show-channel-urls

conda install -y -n test_env matplotlib
