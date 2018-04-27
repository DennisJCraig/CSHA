########################################################################
#### Shell Script to run Oozie workflow for workflow doz customerlocation
########################################################################

echo '[INFO]: Excuting Oozie workflow'
JOB_SUBMIT=$`oozie job -oozie https://ahlclotxpla701.evv1.ah-isd.net:11443/oozie -config job.properties -run`
JOB_ID=${JOB_SUBMIT:5}
echo ${JOB_ID}

while (oozie job -oozie https://ahlclotxpla701.evv1.ah-isd.net:11443/oozie -info ${JOB_ID} | grep RUNNING > /dev/null )
do
  sleep 5
done

result=$(oozie job -oozie https://ahlclotxpla701.evv1.ah-isd.net:11443/oozie -info ${JOB_ID})
if [ `echo $result | grep -c "FAILED" ` -gt 0 ] || [ `echo $result | grep -c "KILLED" ` -gt 0 ]
then
        echo
        echo "[INFO]: The Oozie workflow FAILED"
        exit 0
elif [ `echo $result | grep -c "SUCCEEDED" ` -gt 0 ]
then
        echo
        echo "[INFO]: The Oozie workflow SUCCEEDED"
        exit 1
fi
#########################################################################
