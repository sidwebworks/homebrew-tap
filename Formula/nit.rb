class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.8.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.8.0/nit-darwin-arm64.tar.gz"
      sha256 "dfeedab7a6895fb7a881ac76786e570dc929ea8f0ee3d6dc7e4b0ef229fdbbda"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.8.0/nit-darwin-x64.tar.gz"
      sha256 "cda40f03e23eaf19d2eff73aacc506fafd34e710ea221e423a6fc8ec18689be0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.8.0/nit-linux-arm64.tar.gz"
      sha256 "b1868126e55e59ca68e76e81baf2f55ca051e2b002d77f569d41f26ec0c97e97"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.8.0/nit-linux-x64.tar.gz"
      sha256 "fac3f02af9fae18579b66592f3d6ff7b7c94f3e0e144be811ac4ef41e9028c7e"
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
