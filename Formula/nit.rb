class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.4.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.4.0/nit-darwin-arm64.tar.gz"
      sha256 "25afad784fad250f70e5077d7e6530e91ea7e3fd6ca3ca2f7a88a78c9094734d"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.4.0/nit-darwin-x64.tar.gz"
      sha256 "ddafae571feb78670fc85c756f07ff3e2f11b9fa681f7175e8b17cfb9bbd80a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.4.0/nit-linux-arm64.tar.gz"
      sha256 "662a10e3dee2982d6df0703f5dd5494bfb289732f3633d0277f428d400a986ab"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.4.0/nit-linux-x64.tar.gz"
      sha256 "daffabd1a868d66fddc8e844804076b4a26b4ddcc51a4e54740069311ecbbea4"
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
