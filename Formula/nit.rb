class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.1.0/nit-darwin-arm64.tar.gz"
      sha256 "05dc6d066dacbcbee25b13fdb9b8a649337ad66a9e0a7519ca42d5e61b0824a3"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.1.0/nit-darwin-x64.tar.gz"
      sha256 "bb98f004c02cab0c67a77853e6f1e49849516f8689d4cf0df8bcb7d9d50c62cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.1.0/nit-linux-arm64.tar.gz"
      sha256 "4773991af1ab9258c8ad70b8c72319fe5f3992820dfc2af6d90f41a846408ac1"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.1.0/nit-linux-x64.tar.gz"
      sha256 "7414c7b1f74b4d72e45b0c1496a0c8889d42c308f709a2a5c9f757acf17ffeea"
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
