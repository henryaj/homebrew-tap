class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.2/autoclaude_0.0.2_darwin_amd64.tar.gz"
      sha256 "b86047d8ac93cfb5e1fed8c3b081b573a6035a2e51cf004468dcd8aaabe9c7ad"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.2/autoclaude_0.0.2_darwin_arm64.tar.gz"
      sha256 "2523571063cff98f6c66e2d4ea19c5a5539f85cc495daaccf9c69e33bfa6be23"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.2/autoclaude_0.0.2_linux_amd64.tar.gz"
      sha256 "994c66519ddc13061486c16e72ec51b9fc4e1bb0225048b7eb73c3fb113037a9"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.2/autoclaude_0.0.2_linux_arm64.tar.gz"
      sha256 "7601c87e9bc797881c748787adcf0d446262afb0f840ae5d878211464564e16e"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
