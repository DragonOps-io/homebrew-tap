class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.7-darwin-amd64.zip"
    sha256 "d816c43766848dd5871fcda91ef25292a3affa0ec4a97157f533f32841ec322f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.7-darwin-arm64.zip"
    sha256 "58c663b9064a2a8834f6ed561ec3ed3dbffd754973fe8f71819a97d2aa48a768"
  end
  def install
    bin.install "dragonops-cli"
  end

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
