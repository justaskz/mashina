class Mashina::Core::Packages::ParseUrl
  SUPPORTED_EXTENSIONS = [
    "tar.gz", "tar.xz", "zip",
  ]

  def self.for(url : String) : Mashina::Core::Packages::Package
    path = Path.new(url)
    file_basename = path.basename
    file_extension = SUPPORTED_EXTENSIONS.find { |ext| file_basename.ends_with?(".#{ext}") } || ""
    file_name = file_basename.gsub(".#{file_extension}", "")

    Mashina::Core::Packages::Package.new(
      file_basename: file_basename,
      file_name: file_name,
      file_extention: file_extension,
    )
  end
end
