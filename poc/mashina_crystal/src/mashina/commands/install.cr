class Mashina::Commands::Install
  # check if package name exists in registry
  # load package definition
  # download package

  def self.for(package_name : String)
    registry_path = "spec/fixtures/registry"
    package_path = "#{registry_path}/#{package_name}/package.yaml"
    File.exists?(package_path)

    # package = Mashina::Registry::LoadPackage.for(package_name)
    # load yaml file
    # check if valid

    # Mashina::Packages::Install.for(package.url)
    # Mashina::LocalState::Insert.for(package)
  end
end
