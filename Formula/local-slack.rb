class LocalSlack < Formula
  desc "Local, throwaway Slack for developing and testing Slack apps/bots"
  homepage "https://github.com/parvalabs/local-slack"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-arm64.tar.gz"
      sha256 "db903a8ebe2165cc87144397bb88710c9391ee092cc0df8f599c4bedfe4d9276"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-x64.tar.gz"
      sha256 "872cf90ad8ae7b40a1cb92699648df757011a0f61bea0b7a4fb68c925480304b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-arm64.tar.gz"
      sha256 "82e03bfedfe9011d0cf0f4eaa04e979585652dc13c3285620b770f02d9bfc2f2"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-x64.tar.gz"
      sha256 "168f8f52d3b3d82abc808f3725c3f8a3809bbf6083bcfe55eab992e9b37beee0"
    end
  end

  def install
    bin.install "local-slack"
  end

  test do
    assert_match "local-slack", shell_output("#{bin}/local-slack --help")
  end
end
