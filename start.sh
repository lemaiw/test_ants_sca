#!/bin/bash

#make sure jq is installed on $SCA_SERVICE_DIR (used by status.sh to analyze progress)
if [ ! -f $SCA_SERVICE_DIR/jq ];
then
        echo "installing jq"
        wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 -O $SCA_SERVICE_DIR/jq
        chmod +x $SCA_SERVICE_DIR/jq
fi


#clean up previous job (just in case)
rm -f finished

jobid=`qsub ants_template.pbs`
echo $jobid > jobid

echo "[]" > products.json
