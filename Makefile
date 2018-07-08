REQUIRED_LINUX_DISTRO="Ubuntu"
ACTUAL_LINUX_DISTRO="$(shell lsb_release -i -s)"

REQUIRED_UBUNTU_VERSION="$(shell grep ubuntu_version roles/common/vars/main.yml | cut -d '"' -f 2)"
ACTUAL_UBUNTU_VERSION="$(shell lsb_release -r -s)"

.PHONY: check
check:
ifneq ($(REQUIRED_LINUX_DISTRO),$(ACTUAL_LINUX_DISTRO))
	@echo "This can only run on $(REQUIRED_LINUX_DISTRO)"
endif

ifneq ($(REQUIRED_UBUNTU_VERSION),$(ACTUAL_UBUNTU_VERSION))
	@echo "This can only run on $(REQUIRED_UBUNTU_VERSION) of $(REQUIRED_LINUX_DISTRO)"
endif

.PHONY: provision
provision: check
	ansible-playbook all.yml -i HOSTS --ask-become-pass
