Spectator.describe Mashina::CLI::Install do
  subject { described_class.run("helix") }

  # specify do
  #   command = mock(Mashina::Core::Commands::Install)
  #   subject
  #   expect(command).to have_received(:for).with("helix")
  # end

  # before do
  #   original_stdout = STDOUT
  #   stdout = IO::Memory.new
  #   STDOUT = stdout
  # end

  # after do
  #   STDOUT = original_stdout
  # end

  # specify do
  #   # expect(subject).to eq(true)
  #   subject
  #   output = io.gets_to_end
  #   expect(output).to eq("foo")
  #   # expect(subject).to output.to_stdout
  # end
end
