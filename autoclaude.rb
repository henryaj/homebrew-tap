class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.2/autoclaude_0.1.2_darwin_amd64.tar.gz"
      sha256 "6ec579b1c4f2ca8b53c09717d76e5744aa97c87df88fbc33f84fbf40eaab2c09"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.2/autoclaude_0.1.2_darwin_arm64.tar.gz"
      sha256 "1d1479f5486099a9453805699056566fa682d9d0964dcf2bc7d72e4981941d3a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.2/autoclaude_0.1.2_linux_amd64.tar.gz"
      sha256 "9e5b27525b4805fb2762be05488fb3152640e64afddfe57bd9314448bbda935a"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.2/autoclaude_0.1.2_linux_arm64.tar.gz"
      sha256 "ad99cbfd086172a41d3678f97f140e6ee1b311a4ef20d720d51a57aabaf080b7"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
