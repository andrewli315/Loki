#!/bin/bash
python3 -m pip install -r ./requirements.txt
python3 loki-upgrader.py
nohup python3 loki.py &
cpulimit -p $! --limit=40
