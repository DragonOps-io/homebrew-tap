class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.3-darwin-amd64.zip"
    sha256 "14bc177cfb290cc2774e70004a39c5ab84694b165318143309667f51cb6ee7e1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.3-darwin-arm64.zip"
    sha256 "65dbbfbdf45d85bed0a0db7363cc2705605cdf3a13f0e632806eb58e80af58e3"
  end
  def install
    bin.install "dragonops-cli"
  end

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
