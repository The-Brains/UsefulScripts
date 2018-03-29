# Feel free to improve and share this snipet.

function create_cluster {
	# Arguments
	# TODO: Default value + Check if not set.
	CLUSTER_NAME=$1
	NUMBER_OF_WORKERS=$2

	gcloud dataproc clusters create ${CLUSTER_NAME} \
	    --image-version 1.1 \
	    --num-workers ${NUMBER_OF_WORKERS} \
	    --master-machine-type "n1-highmem-8" \
	    --worker-machine-type "n1-highmem-8" \
	    --worker-boot-disk-size 80GB ;
}
