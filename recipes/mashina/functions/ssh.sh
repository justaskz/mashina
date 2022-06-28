function ssh-add-nordsec {
  ssh-add ~/.ssh/nordsec_rsa
}

function ssh-add-github {
  ssh-add ~/.ssh/github_rsa
}

function ssh-add-nordsec-gitlab {
  ssh-add ~/.ssh/nordsec_gitlab_rsa
}

function ssh-ansible-us-juka {
  ssh -A juka@ansible-1.mountaininfra.net
}

function ssh-ansible-eu-juka {
  ssh -A juka@ansible-2.mountaininfra.net
}

function ssha {
  ssh-ansible-eu-juka
}
