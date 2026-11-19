class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.6.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.6.1/nit-darwin-arm64.tar.gz"
      sha256 "08e6008072c509a344bcd7149886b9f33399cf1ee8fbf8113e8402adb82150be"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.6.1/nit-darwin-x64.tar.gz"
      sha256 "4edd6e4d7bcd20a9fb1f1970f89e85016dea8c4a21753266f04c65eed488b55c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.6.1/nit-linux-arm64.tar.gz"
      sha256 "8f8489a8570bfa6541a31f2a666d54bbbadc7f77c13bc996da7ff0bd52641276"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.6.1/nit-linux-x64.tar.gz"
      sha256 "e75f810465c97c2c57d3810c56e07ebb6a3a037727113f85c250508e47c0e188"
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
