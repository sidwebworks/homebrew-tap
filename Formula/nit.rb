class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v0.1.0/nit-darwin-arm64.tar.gz"
      sha256 "af63d6b9db4d0487f956328b56aa6df52f577f892212fa165371ae47094e0c16"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v0.1.0/nit-darwin-x64.tar.gz"
      sha256 "bc4a5c83951b92ccd6bb219d8426fb631b636936357b9abd262f8ba8e9aabd53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v0.1.0/nit-linux-arm64.tar.gz"
      sha256 "3b75157dba630df77493911e48fa376d4cdcc34319e73e436c1f52e2a3dcda33"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v0.1.0/nit-linux-x64.tar.gz"
      sha256 "ccee8039fa39a38c2eca50498685521d7ef309a1428d2eb30056672f3674df49"
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
