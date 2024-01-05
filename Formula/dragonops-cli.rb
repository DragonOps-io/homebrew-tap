class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.4-darwin-amd64.zip"
    sha256 "644b5878af780a93c7f2c29b5c587c50ea2da04526f56b1284fd710fdf3f3e0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.4-darwin-arm64.zip"
    sha256 "0b76d4cd538a9fba723cce23de077904308d2a62c2a2afce20f2e4535561093f"
  end
  def install
    bin.install "dragonops-cli"
  end

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
