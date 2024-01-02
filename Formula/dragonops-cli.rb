class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.2-darwin-amd64.zip"
    sha256 "10f23c5b58f8bb784afc8662fc62561c35584b5d07b5f213a08f8ebf92c2a0c2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.2-darwin-arm64.zip"
    sha256 "54c29b422982e0b73ee9cf07bcb2d1b98c8318fe7b7f0eb742cbf0e9e2f1cf83"
  end
  def install
    bin.install "dragonops-cli"
  end

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
