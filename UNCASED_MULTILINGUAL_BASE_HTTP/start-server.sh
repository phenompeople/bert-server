#!/usr/bin/env bash
NUMBER_OF_PROCS=$(nproc)
NUMBER_OF_PROCS=$(($NUMBER_OF_PROCS-1))
bert-serving-start -model_dir models/multi_cased_L-12_H-768_A-12 -graph_tmp_dir ${PROJECT_HOME}/tmp  -num_worker=${NUMBER_OF_PROCS} -http_port 8080 -http_max_connect 20 > ${PROJECT_HOME}/logs/bert-server.log
