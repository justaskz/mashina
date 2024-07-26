class Mashina::CLI::Init < Admiral::Command
  def run
    config = <<-STRING
      export XDG_CONFIG_HOME="$HOME/.config"
      export BASE_PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
      export PATH="$HOME/.mashina/bin:$BASE_PATH"
    STRING

    puts config
  end
end
