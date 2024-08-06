Spectator.describe Mashina::Core::Packages::ParseUrl, ".for" do
  subject { described_class.for(url) }

  context "#1" do
    let(:url) { "https://github.com/helix-editor/helix/releases/download/24.07/helix-24.07-aarch64-macos.tar.xz" }

    specify do
      expect(subject.file_basename).to eq("helix-24.07-aarch64-macos.tar.xz")
      expect(subject.file_name).to eq("helix-24.07-aarch64-macos")
      expect(subject.file_extention).to eq("tar.xz")
    end
  end

  context "#2" do
    let(:url) { "https://github.com/junegunn/fzf/releases/download/v0.54.1/fzf-0.54.1-darwin_arm64.zip" }

    specify do
      expect(subject.file_basename).to eq("fzf-0.54.1-darwin_arm64.zip")
      expect(subject.file_name).to eq("fzf-0.54.1-darwin_arm64")
      expect(subject.file_extention).to eq("zip")
    end
  end

  context "#3" do
    let(:url) { "https://github.com/starship/starship/releases/download/v1.19.0/starship-aarch64-apple-darwin.tar.gz" }

    specify do
      expect(subject.file_basename).to eq("starship-aarch64-apple-darwin.tar.gz")
      expect(subject.file_name).to eq("starship-aarch64-apple-darwin")
      expect(subject.file_extention).to eq("tar.gz")
    end
  end
end
