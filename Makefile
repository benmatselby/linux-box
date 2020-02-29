HOST_PATH = ~/.benmatselby/ansible-hosts

.PHONY: explain
explain:
	### Welcome
	#
	#    _   _   _   _   _   _   _
	#   / \ / \ / \ / \ / \ / \ /
	#  ( a | n | s | i | b | l | e )
	#   \_/ \_/ \_/ \_/ \_/ \_/ \_/
	#
	#
	### Installation
	#
	# $$ make all
	#
	### Targets
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: provision-ubuntu
provision-ubuntu: ## Provision ubuntu machines
	ansible-playbook ubuntu.yml -i $(HOST_PATH) --ask-become-pass

.PHONY: provision-raspberry
provision-raspberry: ## Provision raspberry pi machines
	ansible-playbook raspberry.yml -i $(HOST_PATH)
