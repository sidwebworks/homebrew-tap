class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.2.0/nit-darwin-arm64.tar.gz"
      sha256 "9971f22cdd0f07dd242b9ed37ec78acdb9db6f4db5b8fefe528a849503968627"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.2.0/nit-darwin-x64.tar.gz"
      sha256 "8b1eb2d20c6dc3e031fd3723bdfd86f8ba052e721044c6a0cc76c88d34229641"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.2.0/nit-linux-arm64.tar.gz"
      sha256 "3c5bfa208e2cfa6135ba3d2a8e2fa387a4f11e04617dfc483efae2e971d7eaeb"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.2.0/nit-linux-x64.tar.gz"
      sha256 "90d20d8effe9f5b43079f1f7bcd75f657d55773e3d99a1466eac6d2269061ebb"
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
