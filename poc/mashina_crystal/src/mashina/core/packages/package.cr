struct Mashina::Core::Packages::Package
  getter file_basename, file_name, file_extention

  def initialize(@file_basename : String, @file_name : String, @file_extention : String)
  end
end
