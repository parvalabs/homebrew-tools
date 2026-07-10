class LocalSlack < Formula
  desc "Local, throwaway Slack for developing and testing Slack apps/bots"
  homepage "https://github.com/parvalabs/local-slack"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-arm64.tar.gz"
      sha256 "6d8aebdf52847f2d18d9e2bb7f917591b4c4acfc71932f173884b6a25098653b"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-darwin-x64.tar.gz"
      sha256 "645ab586e8256da8b86c8034487ed4f951008801ae1604a755ceb0bfdd7d3dcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-arm64.tar.gz"
      sha256 "3fcfce6b3746a9ccbdf4fedd054499008906f4266459083d476ea1491bd48845"
    end
    on_intel do
      url "https://github.com/parvalabs/local-slack/releases/download/v0.1.0/local-slack-linux-x64.tar.gz"
      sha256 "8a1490d8d611cf08703c00dd7436565fd7c44cd29f2347ca8a8974ad69395cb6"
    end
  end

  def install
    bin.install "local-slack"
  end

  test do
    assert_match "local-slack", shell_output("#{bin}/local-slack --help")
  end
end
