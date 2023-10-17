function ssh-add-nordsec {
  ssh-add ~/.ssh/nordsec_rsa
}

function ssh-add-nordsec-gitlab {
  ssh-add ~/.ssh/nordsec_gitlab_rsa
}

function ssh-add-github {
  ssh-add ~/.ssh/github_rsa
}

function ssh-add-dev {
  ssh-add ~/.ssh/dev_rsa
}

function ssh-ansible-aws {
  ssh -A juka@52.71.175.190
}

function ssh-ansible-us {
  ssh -A juka@ansible-1.mountaininfra.net
}

function ssh-ansible-eu {
  ssh -A juka@ansible-2.mountaininfra.net
}

function ssha {
  ssh-teleport-ansible
}

function sshb {
  ssh-ansible-eu
}

function ssht {
  ssh -A juka@65.21.225.249
}

function ssh-teleport-ansible {
  # ssh -A juka@mountaininfra-ansible-us-2
  ssh-ansible-aws
}
