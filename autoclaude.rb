class Autoclaude < Formula
  desc "Automatically resume Claude Code sessions after rate limits"
  homepage "https://github.com/henryaj/autoclaude"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.6/autoclaude_0.0.6_darwin_amd64.tar.gz"
      sha256 "5f13826d97259b1406face06760e94a457abca4173d1c61a99297d555ec9a54d"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.6/autoclaude_0.0.6_darwin_arm64.tar.gz"
      sha256 "f2c11d822833e0e19563ef76276e248ec758d27f04d31863b425ddca8bc67fe1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.6/autoclaude_0.0.6_linux_amd64.tar.gz"
      sha256 "612b083b3fd232a4423bf7edaf3b8c941252f53f83c3b2d0eaf0054323546047"
    end

    on_arm do
      url "https://github.com/henryaj/autoclaude/releases/download/v0.0.6/autoclaude_0.0.6_linux_arm64.tar.gz"
      sha256 "b049a520f1ed8d298850253c9499544669e2239f1a70c97c84c9425b90e1605f"
    end
  end

  def install
    bin.install "autoclaude"
  end

  test do
    system "#{bin}/autoclaude", "-version"
  end
end
