.PHONY: deps build

deps:
	@echo "Installing roles found in requirements.yml from private github"
	ansible-galaxy install --force -v -r requirements.yml -p roles/

build: deps
	@echo "Beginning packer build..."
	packer build blender-renderfarm-ami.json