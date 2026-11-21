class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.11.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.11.0/nit-darwin-arm64.tar.gz"
      sha256 "4dfff2f732124acd2c0d99c931ede918b2d0e2f03c14c02108475f448a20c980"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.11.0/nit-darwin-x64.tar.gz"
      sha256 "7f831fd05fa9a3b56676e79d6387173f2e9582f7dc67ad18e822be2d4a40a555"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.11.0/nit-linux-arm64.tar.gz"
      sha256 "b446358695a51dcf1cdea8438bb4c1299fb48af29a744f4920a520d7b77098dd"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.11.0/nit-linux-x64.tar.gz"
      sha256 "2f453db178d3973d0f917e8b860b781831a7eb6e901f277109b7c28a13829c88"
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
