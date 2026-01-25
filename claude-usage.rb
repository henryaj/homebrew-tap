class ClaudeUsage < Formula
  desc "CLI tool to track Claude Code subscription usage with sparkline graphs"
  homepage "https://github.com/henryaj/claude-usage"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/claude-usage/releases/download/v0.1.0/claude-usage_0.1.0_darwin_amd64.tar.gz"
      sha256 "4b8b863012d980bc32b55e267c9fa814216d426e93cf81e24255424b5542b16e"
    end

    on_arm do
      url "https://github.com/henryaj/claude-usage/releases/download/v0.1.0/claude-usage_0.1.0_darwin_arm64.tar.gz"
      sha256 "eaf65f847248d4ca3c2043b4690b591b3dea0250eed455ff9d61798b464874cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/claude-usage/releases/download/v0.1.0/claude-usage_0.1.0_linux_amd64.tar.gz"
      sha256 "ff9c3b8d754b23b1fb4cdbe4c4755c45f611a0ad5d7204a2d591c1f43b49d6b6"
    end

    on_arm do
      url "https://github.com/henryaj/claude-usage/releases/download/v0.1.0/claude-usage_0.1.0_linux_arm64.tar.gz"
      sha256 "077e74cb597b8142a5d0b386f5a65f2d521c00642b5a1076e63026800d5acadc"
    end
  end

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match "continuously poll", shell_output("#{bin}/claude-usage --help")
  end
end
