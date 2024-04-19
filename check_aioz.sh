setup_cron_job() {
    local script_path="/usr/local/bin/check_aioz.sh"
    cat > $script_path << EOF
#!/bin/bash
container_count=10
for i in \$(seq 1 \$container_count); do
    container_name="aioznode-\$i"
    if [ "\$(docker inspect -f '{{.State.Running}}' \$container_name 2>/dev/null)" != "true" ]; then
        echo "\$container_name is not running. Starting \$container_name..."
        docker start \$container_name
    fi
done
EOF
    chmod +x $script_path
    (crontab -l 2>/dev/null; echo "*/5 * * * * $script_path") | crontab -
}

setup_cron_job()
