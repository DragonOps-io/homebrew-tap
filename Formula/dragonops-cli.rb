class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.10-darwin-amd64.zip"
    sha256 "deb0914b7b3ee7152870c134f82c47e2d4ecada52e3aeac4e6b54d60e8b5d66e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.10-darwin-arm64.zip"
    sha256 "8e65a2522c901e0b3fc5e4e03203797ad0c215c5dd98647568d34549287b28af"
  end
  def install
    bin.install "dragonops-cli"
  end

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
