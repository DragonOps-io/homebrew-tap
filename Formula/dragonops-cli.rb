class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.5-darwin-amd64.zip"
    sha256 "e314f8c182a9d31c1098e22eb9c5d1031ee26da39663ac77461233a0632cb414"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.5-darwin-arm64.zip"
    sha256 "51650707403307f4c3702c3d3210f3df23b36ceb54e5af37c4e3874c5f4691c3"
  end
  def install
    bin.install "dragonops-cli"
  end

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
