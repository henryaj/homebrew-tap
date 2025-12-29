class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.4/autoclaude_0.0.4_darwin_amd64.tar.gz"
      sha256 "a41cddbcbe55a5423c950dc08fe4b7fda6c1a965afeeb8b79384f5a23a2612cf"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.4/autoclaude_0.0.4_darwin_arm64.tar.gz"
      sha256 "2449e8805118f4c119d9a7d8c818dd9e89c3aed7f848c12dcf7db6a107f8e68d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.4/autoclaude_0.0.4_linux_amd64.tar.gz"
      sha256 "35a14de242ce92e096a9ea0e049438916615c62b6b3a65bd6be6a0980e49f9c0"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.4/autoclaude_0.0.4_linux_arm64.tar.gz"
      sha256 "b2a459901b997cdd07a342a05f4b269bfdc41dea51350d00484d82bb5b4762ce"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
