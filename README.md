# Kworld
Playground for all K*

# Setup
- Windows 10 Pro / Hyper-V
- RHEL 8 for the cluster
- [Instructions for installing RHEL8 on Hyper-V][1]
  - Modified to assign a static MAC address to each VM
  - Modified to select Server base environment
- [Kubernetes installation][2]
  - Disable swap: comment out swap partition in /etc/fstab
    - swapoff -a

# First: App in Container
- helloworld_container/
- Run build.sh as root (port mapping doesn't work rootless as of 9/5/19)

[1]: https://developers.redhat.com/rhel8/install-rhel8-hyperv/
[2]: https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
