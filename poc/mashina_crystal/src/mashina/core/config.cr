class Mashina::Core::Config
  def self.for(config)
    JSONSchema.create_validator("schema.yaml")
  end
end
