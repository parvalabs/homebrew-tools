class LocalSlack < Formula
  desc "Local, throwaway Slack for developing and testing Slack apps/bots"
  homepage "https://github.com/parvalabs/local-slack"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-arm64.tar.gz"
      sha256 "8e152e12f8ce772bf22217654d42ab01c376c59d27983c27a82cb3c1bf1dcb6d"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-x64.tar.gz"
      sha256 "25b7ea37b0b3360ad23ba91f1bfbea9b57408538f1f3b9c75f8034a0237d8676"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-arm64.tar.gz"
      sha256 "09b6b82926a2e8e5491cedd3af7e27e91993f9f4bc9303a991a175969c480509"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-x64.tar.gz"
      sha256 "95a6e42010edfe3d01a9760ae20515ea0f9db3ade417d4b0180cd43a6c8cd10f"
    end
  end

  def install
    bin.install "local-slack"
  end

  test do
    assert_match "local-slack", shell_output("#{bin}/local-slack --help")
  end
end
