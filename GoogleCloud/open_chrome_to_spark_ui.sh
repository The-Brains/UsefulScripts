# Run that after the tunnel_to_cluster

function gcloud_chrome-to {
    /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
        "http://$1-m:8088/cluster/apps/RUNNING" \
        --proxy-server="socks5://localhost:1080" \
        --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE localhost" \
        --user-data-dir=/tmp/
}
