class Mashina::CLI::Install < Admiral::Command
  define_help
  define_argument package : String, description: "Name of the package"

  def run
    puts help unless arguments.package

    # url = "https://github.com/helix-editor/helix/releases/download/24.07/helix-24.07-aarch64-macos.tar.xz"
    # Mashina::Core::Download.for(url)
  end
end
