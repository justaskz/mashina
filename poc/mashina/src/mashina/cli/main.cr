class Mashina::CLI::Main < Admiral::Command
  define_help

  register_sub_command "init", Mashina::CLI::Init
  register_sub_command "install", Mashina::CLI::Install

  def run
    puts help
  end
end
