# Creating a k0s HA Kubernetes cluster with Ansible Playbook

## TL;DR

```
git clone https://github.com/arashkaffamanesh/k0s-ansible

# brew reinstall python@3.9

pip3 install ansible

pip3 install PyYAML

./tools/multipass_create_instances.sh 7

python3 ./tools/multipass_generate_inventory.py

Designated first three instances as control plane nodes.
Created Ansible Inventory at: /Users/arash/../k0s-ansible/tools/inventory.yml

cp tools/inventory.yml inventory/multipass/inventory.yml

ansible all -i inventory/multipass/inventory.yml -m ping

ansible-playbook site.yml -i inventory/multipass/inventory.yml

export KUBECONFIG=inventory/multipass/artifacts/k0s-kubeconfig.yml

k get nodes
```

## Related resources

### Origin Repo

https://github.com/movd/k0s-ansible

### Other resources

https://www.bookstack.cn/read/k0s-0.11.0-en/5ddc2eceb7faadb0.md

https://docs.k0sproject.io/main/examples/ansible-playbook/