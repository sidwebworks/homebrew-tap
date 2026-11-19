class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.7.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.7.0/nit-darwin-arm64.tar.gz"
      sha256 "312d1f3c4dc9908af17e0014f3a86df9847e5d17f86b27b6b71dfbf317ff2622"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.7.0/nit-darwin-x64.tar.gz"
      sha256 "f751e4630d67adf1a2f6f44781e390cfa8d0c326901b65cc88b531db222a34b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.7.0/nit-linux-arm64.tar.gz"
      sha256 "aaf8e689e89cc3ac4e58a84dd231e4a5bdf78e1d197c861663c370f1572be433"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.7.0/nit-linux-x64.tar.gz"
      sha256 "def4590688e5bc4e11d35420b4e719304286e94953c05beeb8235c90f636c67c"
    end
  end

  def install
    bin.install "nit"
  end

  def caveats
    "Claude features need Claude Code: https://claude.com/claude-code"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nit --version")
  end
end
