.PHONY: deps install

deps:
	@echo "Installing roles found in requirements.yml from private github"
	ansible-galaxy install --force -v -r requirements.yml -p roles/

test: clean
	vagrant up

apply:
	vagrant provision

clean:
	vagrant destroy

build:
	packer build blender-renderfarm-ami.json