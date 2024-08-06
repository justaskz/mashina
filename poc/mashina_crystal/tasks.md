SPEC:
- init
  - load mashina.yaml config file
  - set env vars
  - load aliases

- install:
  - Check if package available in registry
  - Download archive
  - Extract
  - Move to ~/.mashina/lib version
  - Update symlink in ~/.mashina/bin
