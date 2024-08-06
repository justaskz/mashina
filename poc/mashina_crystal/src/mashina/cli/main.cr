class Mashina::CLI::Main < Admiral::Command
  define_help

  register_sub_command "init", Mashina::CLI::Init
  register_sub_command "install", Mashina::CLI::Install
  register_sub_command "dev", Mashina::CLI::Dev

  def run
    puts help
  end
end