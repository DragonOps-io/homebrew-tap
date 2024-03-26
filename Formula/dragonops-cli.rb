class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.9-darwin-amd64.zip"
    sha256 "f3a518f297a5f4d50259548bcd83c423005023c0af068022c4a2082b22fc9ea1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.9-darwin-arm64.zip"
    sha256 "230336d020c2d852a1db7b3c81071fe93b679553d10157a3c3237074aacd260a"
  end
  def install
    bin.install "docli"
  end

  test do
    system "#{bin}/docli", "--version"
  end
end
