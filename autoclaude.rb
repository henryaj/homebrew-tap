class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.3/autoclaude_0.0.3_darwin_amd64.tar.gz"
      sha256 "23e1397716f9421d20863754139d27b077bc15c2327dcfc978464950b286ee17"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.3/autoclaude_0.0.3_darwin_arm64.tar.gz"
      sha256 "d67ea478b82a81d6ae2cf7ef36411cffb5ac99527e3d4fbc1feba9b064247f86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.3/autoclaude_0.0.3_linux_amd64.tar.gz"
      sha256 "2ca4481d52929f4b6cb2002d850ff252a3f7a4113573ba4198035029a75b51ec"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.3/autoclaude_0.0.3_linux_arm64.tar.gz"
      sha256 "02f85438760b04dfb95086b5e9b5fa8d46bdacd677dbd8b362c663cfc64c890f"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
