class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.12-darwin-amd64.zip"
    sha256 "3eed670ecc550b6aeda7fc8fe0deeb6554088bd3e969b0d11a17a5630c1e501b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.12-darwin-arm64.zip"
    sha256 "7be93a9de385f521cf47a5034f1f287568eb0fecc6369858da847efc86b1276e"
  end
  def install
    bin.install "docli"
  end

  test do
    system "#{bin}/docli", "--version"
  end
end
