class Nit < Formula
  desc "Keyboard-first local code review, with Claude as a second reader"
  homepage "https://sidwebworks.com/things/nit"
  version "1.12.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.12.0/nit-darwin-arm64.tar.gz"
      sha256 "7e1a9b54b9bf3a57039908ee3a94f8172dc6632b5a6e3ea451eadf5c62eaee76"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.12.0/nit-darwin-x64.tar.gz"
      sha256 "636e5b64ea279d471e4695e0e0ba1d0ebcf8570f8271341c79a21c6de30a519f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sidwebworks/nit/releases/download/v1.12.0/nit-linux-arm64.tar.gz"
      sha256 "e5a429ccec84b9620c7d5feaa01c131e99ab2bc2bac19f484523d878e1835a2d"
    end
    on_intel do
      url "https://github.com/sidwebworks/nit/releases/download/v1.12.0/nit-linux-x64.tar.gz"
      sha256 "8b37ccb80eeda2235856e5419ac2ccdcd09a1cff79e48d43eaa4306a333eaade"
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
