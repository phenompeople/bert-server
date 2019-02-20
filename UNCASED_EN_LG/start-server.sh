#!/usr/bin/env bash
NUMBER_OF_PROCS=$(nproc)
NUMBER_OF_PROCS=$(($NUMBER_OF_PROCS/2))
bert-serving-start -model_dir models/uncased_L-24_H-1024_A-16 -graph_tmp_dir ${PROJECT_HOME}/tmp  -num_worker=${NUMBER_OF_PROCS} > ${PROJECT_HOME}/logs/bert-server.log
