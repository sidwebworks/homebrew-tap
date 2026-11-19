class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.3.0/nit-darwin-arm64.tar.gz"
      sha256 "da4e89fd9e85d077c961cde03109f4ca0560a6840a132137094412cb2a254963"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.3.0/nit-darwin-x64.tar.gz"
      sha256 "b5a1bdaed279d4bd36e0ba74dc948ac911f591a945eea6591898cdef262b1700"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.3.0/nit-linux-arm64.tar.gz"
      sha256 "14571799dc0244cd76b1b2af53463638585e4d0bc21e3639854be4ea8fd85816"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.3.0/nit-linux-x64.tar.gz"
      sha256 "1b40fc7f60964924efbfcf23f831bfc243eaa17fb14f609b7adb91948ced6c44"
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
