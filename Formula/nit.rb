class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.5.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.5.0/nit-darwin-arm64.tar.gz"
      sha256 "1861103d3fe5806c4db9684b3733f8f64ad4884a4a1e935eac38d14276df2f96"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.5.0/nit-darwin-x64.tar.gz"
      sha256 "82eb7ace5135ed2d8ee655a7fb996f92b3814e6b772aa04e925c9bb5a901e51b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.5.0/nit-linux-arm64.tar.gz"
      sha256 "e3dc41b5edfd864b2d280b5492e1347a7bd97377dcd717a2a4c267e63ec0b2bd"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.5.0/nit-linux-x64.tar.gz"
      sha256 "3bb092eba43591054746ca6f2f62e218513fe270356b1d1746b976119095aeea"
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
