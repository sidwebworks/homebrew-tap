class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.9.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.9.0/nit-darwin-arm64.tar.gz"
      sha256 "a1adf27735563b346e0ba772d9a1ec93245dba55d1445aed0e8924156bc136a4"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.9.0/nit-darwin-x64.tar.gz"
      sha256 "b3afa9f113c12ee7532705d3dd9ba2909f2e929a00fafe3ee82793270790c6c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.9.0/nit-linux-arm64.tar.gz"
      sha256 "2e478a7a6b768284f1c8547493002f92375707d6264633dd19cbbad5dcd0a6a8"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.9.0/nit-linux-x64.tar.gz"
      sha256 "ed5a413f5448bc6de26c222785fb5987ff3617be045dd1848c071eac83ebedbb"
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
