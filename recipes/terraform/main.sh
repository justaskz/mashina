source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed terraform
  install
}

function update_config {
  mkdir -p "$GLOBAL_CONFIG/tflint"
  ln -sf "$MASHINA_SOURCE/recipes/terraform/config/tflint.hcl" "$GLOBAL_CONFIG/tflint/.tflint.hcl"
}

function install_debian {
  apt install -y gpg
  wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
  apt update
  apt install -y terraform
}

function install_macos {
  brew tap hashicorp/tap
  brew install hashicorp/tap/terraform terragrunt terraform-ls tflint
}

function terraform_manual {
  VERSION="1.6.5"
  URL="https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip"
  wget $URL -O "$MASHINA_TMP/terraform.zip"
  unzip "$MASHINA_TMP/terraform.zip" -d "$MASHINA_OPT/terraform"
  rm -rf "$MASHINA_TMP/terraform.zip"

  ln -s "$MASHINA_OPT/terraform/terraform" "$MASHINA_BIN"
}

function terragrunt_manual {
  VERSION="0.53.8"
  URL="https://github.com/gruntwork-io/terragrunt/releases/download/v${VERSION}/terragrunt_linux_amd64"
  wget $URL -O "$MASHINA_TMP/terragrunt"
  mkdir -p "$MASHINA_OPT/terragrunt"
  mv "$MASHINA_TMP/terragrunt" "$MASHINA_OPT/terragrunt/terragrunt"
  chmod +x "$MASHINA_OPT/terragrunt/terragrunt"
  ln -s "$MASHINA_OPT/terragrunt/terragrunt" "$MASHINA_BIN"
}

run
