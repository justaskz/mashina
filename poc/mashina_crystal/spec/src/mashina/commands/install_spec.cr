Spectator.describe Mashina::Commands::Install, ".for" do
  subject { described_class.for(package_name) }

  let(:package_name) { "helix" }

  specify do
    expect(subject).to eq(true)
    # expect(subject.name).to eq(package_name)
  end
end
