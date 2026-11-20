class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.10.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.10.0/nit-darwin-arm64.tar.gz"
      sha256 "9c52c599a41addc1398dc6a1b9d34642d7d9d2d2b7b2ba280b5aa95de4affdcb"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.10.0/nit-darwin-x64.tar.gz"
      sha256 "1f9f3c459a401792507776053df048192892cfe266df1d9740037bec6da408b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.10.0/nit-linux-arm64.tar.gz"
      sha256 "1c626c28f5c0b150e925e67a20d60ec80ce431819fae068449461e6d465d705f"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.10.0/nit-linux-x64.tar.gz"
      sha256 "cfb7b8c94f49d58937eb5622f33dcce1fffc32b27229602d4c8f534c178f8bb6"
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
