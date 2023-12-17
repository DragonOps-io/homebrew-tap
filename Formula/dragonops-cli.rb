class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"
  url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.1-darwin-amd64.zip"
  sha256 "558022c538f0fb08c56a71b1b8ad4d3e2883c8c1e53a902d2b868918a14423c8"
  license ""

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
