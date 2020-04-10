# SSH port GitLab
gitlab_rails['gitlab_shell_ssh_port'] = 2222

# GitLab
nginx['listen_port'] = 80
nginx['listen_https'] = false
nginx['proxy_set_headers'] = {
    "X-Forwarded-Proto" => "https",
    "X-Forwarded-Ssl" => "on"
}

# Registry
registry_nginx['listen_port'] = 80
registry_nginx['listen_https'] = false
gitlab_rails['registry_host'] = "localhost:5555"