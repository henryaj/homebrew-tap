class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.0/autoclaude_0.1.0_darwin_amd64.tar.gz"
      sha256 "620ed0223ad72fece24d582351351cad7dec8cc613484519630cbc9a258938fb"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.0/autoclaude_0.1.0_darwin_arm64.tar.gz"
      sha256 "69b1b70db15c00e13e00a931adcb8d7af473b6eb320998b85975f1be7430c7da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.0/autoclaude_0.1.0_linux_amd64.tar.gz"
      sha256 "c0aa5c97036c0af34547f795a19f0a256d954df6c58f8b7610a7c1a6400ad0f0"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.0/autoclaude_0.1.0_linux_arm64.tar.gz"
      sha256 "7300c2cc7d3bb2791d6e06b86fb47a22074ca02899331f076cbb51a53295a8bc"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
