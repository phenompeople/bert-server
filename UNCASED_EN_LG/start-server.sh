#!/usr/bin/env bash
NUMBER_OF_PROCS=$(nproc)
bert-serving-start -model_dir models/uncased_L-24_H-1024_A-16 -num_worker=${NUMBER_OF_PROCS} > ${PROJECT_HOME}/logs/bert-server.log