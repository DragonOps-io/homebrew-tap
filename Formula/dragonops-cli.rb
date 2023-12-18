class DragonopsCli < Formula
  desc "This is the DragonOps CLI"
  homepage "https://github.com/DragonOps-io/homebrew-tap"
  
  if OS.mac? && Hardware::CPU.intel?
      url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.1-darwin-amd64.zip"
        sha256 "322f076110183f9f6aeeb9159578cd5c77d00365fe388ed4c21cfa04a31f982a"
    end
  
    if OS.mac? && Hardware::CPU.arm?
      url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/dragonops-cli_0.0.1-darwin-arm64.zip"
        sha256 "2f8d835aa23c1364faacfe162f273cc5ecfa8b48faa5186d0c05f0c97986c85a"
    end
  
  def install
     bin.install "dragonops-cli"
  end

  test do
    system "#{bin}/dragonops-cli", "--version"
  end
end
