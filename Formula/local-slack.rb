class LocalSlack < Formula
  desc "Local, throwaway Slack for developing and testing Slack apps/bots"
  homepage "https://github.com/parvalabs/local-slack"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-arm64.tar.gz"
      sha256 "b86935e7432e4f13b7badbcd6a02ee0e448b5342d57ecec494adb032019f7bb5"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-x64.tar.gz"
      sha256 "22c16c5ffdbb3661aa69cbca800fada8837087228b2d0b84308541b25dac3905"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-arm64.tar.gz"
      sha256 "4e547c840f0e885ef36604ab21da90e27bf9995440f719e32f9e07582790d495"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-x64.tar.gz"
      sha256 "47c5a3003836896a2b3981bf4921bd08687332282f1fc3ac3ac1c3cdc44ee67a"
    end
  end

  def install
    bin.install "local-slack"
  end

  test do
    assert_match "local-slack", shell_output("#{bin}/local-slack --help")
  end
end
