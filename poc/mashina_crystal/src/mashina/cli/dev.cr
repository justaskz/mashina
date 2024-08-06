class Mashina::CLI::Dev < Admiral::Command
  def run
    registry_path = "../registry/helix/package.yaml"
    schema_path = "./schemas/package.yaml"
    yaml = File.read(registry_path)
    package = Mashina::Packages::Package.from_yaml(yaml)

    puts package.url
  end
end
