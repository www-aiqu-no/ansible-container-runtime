# https://molecule.readthedocs.io/en/latest/
# geerlingguy/docker-ubuntu1804-ansible:latest
# centos/systemd:latest
param (
    [string]$command       = "list",
    [string]$scenario      = "default",
    [string]$image_name    = "centos",
    [string]$image_version = "7"
)

docker run --rm -it --privileged `
  -w /role `
  -v $pwd/:/role:ro `
  -v /var/run/docker.sock:/var/run/docker.sock `
  -e IMAGE_NAME=$image_name `
  -e IMAGE_VERSION=$image_version `
  quay.io/ansible/molecule:latest `
  molecule $command --scenario-name $scenario
