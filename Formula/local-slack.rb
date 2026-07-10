class LocalSlack < Formula
  desc "Local, throwaway Slack for developing and testing Slack apps/bots"
  homepage "https://github.com/parvalabs/local-slack"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-arm64.tar.gz"
      sha256 "b30cab013d4bd29b650469b33af00ba2ae0919f7c195cd19b183ade969da4d9a"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-x64.tar.gz"
      sha256 "5e80b97667c21c9a68a32c3ff467305195a874021088ba582a93e6cb6dfdfd49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-arm64.tar.gz"
      sha256 "6bdd3ec6cfead6027de14d65c2156f5818c2b75c95af9d3f7d253a2f3a588d82"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-x64.tar.gz"
      sha256 "6a7ec78b1ba2a6e026a0d0ab6efd9f647ab1cb333e192da82a38f334a6bb57e5"
    end
  end

  def install
    bin.install "local-slack"
  end

  test do
    assert_match "local-slack", shell_output("#{bin}/local-slack --help")
  end
end
