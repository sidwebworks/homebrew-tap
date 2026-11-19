class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.7.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.7.1/nit-darwin-arm64.tar.gz"
      sha256 "f5f04feeac0afc02bbcd5c5c196ddba1da655dc49b77706f7dc8d45b2c974b81"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.7.1/nit-darwin-x64.tar.gz"
      sha256 "bdf97cf7bce96097c6b2ab4f4f5134185037abcbe63a42ee93294548075aadce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.7.1/nit-linux-arm64.tar.gz"
      sha256 "2e5230aa3eb049851583a098afe763b99bc8711fec7a2ab991c8ce0a29adc6d2"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.7.1/nit-linux-x64.tar.gz"
      sha256 "398a31f410ec91ba909c32b412c0a9a22afbcaa84aff9b06f0f665475edc7ed2"
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
