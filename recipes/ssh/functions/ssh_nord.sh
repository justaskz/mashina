function ssh-add-nordsec {
  ssh-add ~/.ssh/nordsec_rsa
}

function ssh-add-nordsec-gitlab {
  ssh-add ~/.ssh/nordsec_gitlab_rsa
}

function ssh-aws {
  ssh -A juka@52.71.175.190
}

function ssh-ansible-robotic-1 {
  ssh -A juka@3.219.63.79
}

function ssh-ansible-robotic-2 {
  ssh -A juka@44.214.9.175
}

function ssh-ansible-us {
  ssh -A juka@ansible-1.mountaininfra.net
}

function ssh-ansible-eu {
  ssh -A juka@ansible-2.mountaininfra.net
}

function ssh-aws-stage {
  ssh -A juka@52.204.95.108
}

function ssh-hz-test {
  ssh -A juka@65.21.225.249
}

# proxy to cat-kubectl-mng-prod-aws-usea1-1 through aws-mountaininfra-bastion-us
function ssh-k8s-prod {
  ssh -A -J juka@18.208.23.133 juka@172.16.9.76
}

# proxy to cat-kubectl-mng-stage-aws-usea1-1 through nordsec-bastion-mng-stage-aws-usea1-1
function ssh-k8s-stage {
  ssh -A -J juka@52.4.249.219 juka@172.17.9.76
}

function ssha {
  # ssh-teleport-ansible
  ssh-aws
  # ssh-ansible-robotic-1
}

function sshb {
  ssh-ansible-eu
}

function sshs {
  ssh-aws-stage
}

function ssht {
  ssh-hz-test
}

function sshk {
  ssh-k8s-stage
}

function ssh-teleport-ansible {
  ssh -A juka@mountaininfra-ansible-us-2
}
