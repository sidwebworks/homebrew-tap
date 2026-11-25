class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.12.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.12.1/nit-darwin-arm64.tar.gz"
      sha256 "c78eecfa7d56b8695e246cbf60635ecf022b25a53bf95c61cab648356e19ca06"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.12.1/nit-darwin-x64.tar.gz"
      sha256 "2f87b9b2a00b4defdcbb249e0ae9919c720cf89775cda1cfa3f839e45a212c80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.12.1/nit-linux-arm64.tar.gz"
      sha256 "4a7603b6c2dc1525dfffec6cc346d26ff49728fbc4282f263df63c8d9ea5bc8c"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.12.1/nit-linux-x64.tar.gz"
      sha256 "b3dc16caec7170288190d0a5ba568ede767c739b22aefb7631b74d711cd3f31e"
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
