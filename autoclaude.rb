class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.1/autoclaude_0.1.1_darwin_amd64.tar.gz"
      sha256 "675bcc695b4a3d1ba8bd7d8ac9aea5f2d4b3f8f90fd3994e3de4c5f72fd32848"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.1/autoclaude_0.1.1_darwin_arm64.tar.gz"
      sha256 "4b516c8a57407db9ad59fc368970b170766e4d4d4956d9a5cd5a0b089e4c3f3f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.1/autoclaude_0.1.1_linux_amd64.tar.gz"
      sha256 "02d6b6f95eb7503519fd65e2162bede26f71fd9ad7825a9fd75fc4c5ca78c71c"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.1.1/autoclaude_0.1.1_linux_arm64.tar.gz"
      sha256 "8b1243b7510c03bf82a9466b2ae422b05c91514e605e561f2121505967b3f141"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
