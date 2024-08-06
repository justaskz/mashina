class Mashina::Core::Download
  def self.for(url)
    # - Check if package available in registry
    # - Download archive

    # HTTP::Client.get(url) do |response|
    #   File.open(file_path, "w") do |file|
    #     IO.copy(response.body_io, file)
    #   end
    # end

    package = Mashina::Core::Packages::ParseUrl.for(url)
    tmp_dir = "/tmp/mashina"

    command = <<-SCRIPT
      mkdir -p #{tmp_dir};
      wget -qnc -P #{tmp_dir} #{url};
      tar -xf #{tmp_dir}/#{package.file_basename} -C #{tmp_dir};
      mv #{tmp_dir}/#{package.file_name} $HOME/.mashina/lib/#{package.file_name};
    SCRIPT
    # ln -s $HOME/.config/lib/#{package.file_name} $HOME/.config/bin/

    puts command
    # Process.run(command)

    # - Extract
    # - Move to ~/.mashina/lib version
    # - Update symlink in ~/.mashina/bin
  end
end
