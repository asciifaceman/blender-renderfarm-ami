# Blender Renderfarm AMI
Creates an AMI that contains a Blender instance with the crowd render addon
installed, enabled, and started with CUDA settings for AWS GPU instances (eventually)

Current Public AMI: 

* US-WEST-1:
    * `blender-renderfarm-ami 1576738572`
    * `ami-091c20cb862c73fbd`

# Requirements
* Ansible 2.6.2+
* Packer

# Usage
This project expects you to manage your credentials. Expected workflow is to use shared credentials profiles + `AWS_PROFILE` environment variable.

* `make deps`
* `make build`