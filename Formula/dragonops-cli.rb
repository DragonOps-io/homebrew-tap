class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"

  if OS.mac? && Hardware::CPU.intel?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.13-darwin-amd64.zip"
    sha256 "da405e4f40859dd5589bb1b849260af0f5c3c5f90c61e1b69fa8fc1e7af128c2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.13-darwin-arm64.zip"
    sha256 "cc28c8d515c7c3547a89cf8df03e810d9f08e22c43db751695bab015512754de"
  end
  def install
    bin.install "docli"
  end

  test do
    system "#{bin}/docli", "--version"
  end
end
