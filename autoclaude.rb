class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.7/autoclaude_0.0.7_darwin_amd64.tar.gz"
      sha256 "ebb34d0ad52677acb410c0c8142a00e0e609eb2c5af9c7d1029a8843e51c5758"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.7/autoclaude_0.0.7_darwin_arm64.tar.gz"
      sha256 "dc779b609466ed3a0ce44a01ea9d16a8319af01f3f86b9767da60bf584f9c125"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.7/autoclaude_0.0.7_linux_amd64.tar.gz"
      sha256 "d1fed968cb08b2cce0f28e776cf0c2f33cc6ae184f98101f8eaed504af7c7114"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.7/autoclaude_0.0.7_linux_arm64.tar.gz"
      sha256 "dfc1fba64393c5db3420a4d98aeea57349364d4c17b50375a806355ce37c05de"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
