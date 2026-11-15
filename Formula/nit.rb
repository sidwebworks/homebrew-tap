class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.2.1/nit-darwin-arm64.tar.gz"
      sha256 "8bbeee864f513d83775ec9e1a93dd438f2280039d68b0bdf99fbf5fd407f621b"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.2.1/nit-darwin-x64.tar.gz"
      sha256 "674c853659d2147e7df02fccdcf0c55b20a806d2719091876cb8f54a55c4b042"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.2.1/nit-linux-arm64.tar.gz"
      sha256 "d24f2138c764bf0bcea7d07821f31153cba1dabb7c57c2b1fc0fc8a978e56a07"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.2.1/nit-linux-x64.tar.gz"
      sha256 "abbb3986c7fc44a0310343ff5f47112f0664fca3b9a05bab52a27efb251e1341"
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
