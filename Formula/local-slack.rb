class LocalSlack < Formula
  desc "Local, throwaway Slack for developing and testing Slack apps/bots"
  homepage "https://github.com/parvalabs/local-slack"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.1/local-slack-darwin-arm64.tar.gz"
      sha256 "65cdfc115e5bf44f01e8bd15c596558ba9163224fdca65ea9f778301854d7698"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.1/local-slack-darwin-x64.tar.gz"
      sha256 "e41aa9799713780d0e34122675e045b5de1a0b2b207728eca313d1dff89ff7d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.1/local-slack-linux-arm64.tar.gz"
      sha256 "08fbb94f87657fea7a66db9ada9e9f3e49acef56704a260fb348b2a0c66f36b0"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.1/local-slack-linux-x64.tar.gz"
      sha256 "55e58ced40e60e489303bffed17f7020d40d55e113b2b77b3c9a1684af1e18e5"
    end
  end

  def install
    bin.install "local-slack"
  end

  test do
    assert_match "local-slack", shell_output("#{bin}/local-slack --help")
  end
end
