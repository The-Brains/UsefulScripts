function launch_job {
	# Arguments
	# TODO: Default value + Check if not set.
	CLUSTER_NAME=$1
	shift
	JAR_PATH=$1
	shift
	CLASS_PATH=$1
	shift

	gcloud dataproc jobs submit spark \
	    --cluster ${CLUSTER_NAME} \
	    --class ${CLASS_PATH} \
	    --properties spark.executor.memory=28g \
	    --properties spark.yarn.executor.memoryOverhead=10240 \
	    --jars ${JAR_PATH} \
	    -- \
	    $* ;
}
