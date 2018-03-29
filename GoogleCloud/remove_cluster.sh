function destroy_cluster {
	# Arguments
	# TODO: Default value + Check if not set.
	CLUSTER_NAME=$1

	gcloud dataproc clusters delete ${CLUSTER_NAME} --quiet
}
