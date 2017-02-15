function docker-sync-clock -d "Re-sync the Docker VM clock"
    docker run -it --rm --privileged --pid=host debian nsenter -t 1 -m -u -n -i date -u (date -u +%m%d%H%M%Y)
end
