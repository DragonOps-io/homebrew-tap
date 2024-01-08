class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.6-darwin-amd64.zip"
    sha256 "b193e55ec4d46dcb39babe305407d8301fe3689d77487ab91e517d1f55184ee3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.6-darwin-arm64.zip"
    sha256 "e0974ea4202b4912f28f3336dac92d6ad77ad750be2a2e6138db428a5810303d"
  end
  def install
    bin.install "dragonops-cli"
  end

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
