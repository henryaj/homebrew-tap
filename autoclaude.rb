class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.1/autoclaude_0.0.1_darwin_amd64.tar.gz"
      sha256 "185980b058bfd05bb80f2e8c85cbd90328ffb01e93298009ed710627579e8283"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.1/autoclaude_0.0.1_darwin_arm64.tar.gz"
      sha256 "0bede13f3b4de04ce40c94cc265900f1ff20422a04c8116960ac00aca51d73e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.1/autoclaude_0.0.1_linux_amd64.tar.gz"
      sha256 "21063be1bd912d9fa249c072ae3aea259c647217ec108da0dac29e58dc5fbef1"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.1/autoclaude_0.0.1_linux_arm64.tar.gz"
      sha256 "7e75126b7958d88c8b06ab6cc8de1447ff6dcc097cbfece5676da033ee86406f"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
