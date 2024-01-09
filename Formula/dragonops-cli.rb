class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.7-darwin-amd64.zip"
    sha256 "bb87233d00c6fe9ad5302759a54edcb590489745793a122770656fe4d72afd80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.7-darwin-arm64.zip"
    sha256 "63cca6e19fc3d7ffcd2f84899b3229e83cc0ce9059a8f4b6856ca8c6f2162b00"
  end
  def install
    bin.install "dragonops-cli"
  end

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
