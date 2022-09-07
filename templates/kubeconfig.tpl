apiVersion: v1
kind: Config
preferences:
  colors: true
current-context: bastion
clusters:
- cluster:
    server: https://127.0.0.1:${port}
    insecure-skip-tls-verify: true
  name: kubernetes
contexts:
- context:
    cluster: kubernetes
    user: bastion
  name: bastion
users:
- name: bastion
  user:
    token: ${token}
