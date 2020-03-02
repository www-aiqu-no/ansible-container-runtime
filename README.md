# ANSIBLE-ROLE: container-runtime

Basic installation of container runtimes

(Based on https://github.com/geerlingguy/ansible-role-docker)

## STATUS

Only docker configured/tested

## EXAMPLE
```yaml
- hosts: all
  tasks:
    - name: Install container runtimes
      include_role:
        name: docker
      vars:
        docker_enabled: true
        docker_users: ["kds"]
        podman_enabled: false

```
