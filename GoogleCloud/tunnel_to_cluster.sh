# After running that you can run open_chrome_to_spark_ui

function gcloud-ssh-tunnel-to {
    gcloud compute ssh --zone=us-west1-a --ssh-flag="-D 1080" --ssh-flag="-N" --ssh-flag="-n" $1-m
}
