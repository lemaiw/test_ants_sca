#!/bin/bash



#clean up previous job (just in case)
rm -f finished

jobid=`qsub ants_template.pbs`
echo $jobid > jobid

echo "[]" > products.json
