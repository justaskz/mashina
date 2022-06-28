source recipes/helpers/install.sh

function run {
  exit_if_installed command
  install
}

# function install_debian {
# }

# function install_minikube {
#   curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
#   sudo install minikube-linux-amd64 /usr/local/bin/minikube
# }

function install_kubernetes {
  snap install kubectl --classic
}

function install_kind {
  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
  chmod +x ./kind
  mv ./kind /usr/bin/
}

function install_kubeadm {
  curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
  echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list
  apt-get update
  apt-get install -y kubelet kubeadm kubectl
  # apt-mark hold kubelet kubeadm kubectl
}

run
