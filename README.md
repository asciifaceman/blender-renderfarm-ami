# Blender Renderfarm AMI
Creates an AMI that contains a Blender instance with the crowd render addon
installed, enabled, and started with CUDA settings for AWS GPU instances (eventually)

Going to make public AMIs once it's further along.

Current test AMI: ami-03825bcd1e45a4d47s

# TODO
* Generate packer json with account-specifics

# Requirements
* Ansible 2.6.2+
* Packer

# Usage
This project expects you to manage your credentials. Expected workflow is to use shared credentials profiles + `AWS_PROFILE` environment variable.

* `make deps`
* `make build`