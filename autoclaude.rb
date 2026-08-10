class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.3/autoclaude_0.1.3_darwin_amd64.tar.gz"
      sha256 "d5c77eed4c8c6f343656b0a46847033ae85ad2e0493a13287e6c1256f81b3067"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.3/autoclaude_0.1.3_darwin_arm64.tar.gz"
      sha256 "daa658c3cd10cc2e9055686fdc84ef0bae5930419ccc483b4cbc1964b46ee582"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.3/autoclaude_0.1.3_linux_amd64.tar.gz"
      sha256 "1a75503d4c8c7d7525fae9bd6846f9526a843208a018c84f81b0c062f7059078"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.3/autoclaude_0.1.3_linux_arm64.tar.gz"
      sha256 "a62287e60a011ac00d3c2760e0f05a0e848125e6e42a341b5d5e8bec58ce9b38"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
