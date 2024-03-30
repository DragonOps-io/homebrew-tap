# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Docli < Formula
  desc "DragonOps CLI to deploy and manage cloud infrastructure"
  homepage "https://github.com/DragonOps-io/homebrew-tap"
  version "0.0.26"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.26/docli_Darwin_x86_64.tar.gz"
      sha256 "2f0eeaa90e758d759cf02244c8a47829bffbc231a0a25c20a755c6141950caf4"

      def install
        bin.install "docli"
      end
    end
    if Hardware::CPU.arm?
      url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.26/docli_Darwin_arm64.tar.gz"
      sha256 "b2e927396de46b812599623409f3eb975186f03b1f9768a748ecbce76bba2640"

      def install
        bin.install "docli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.26/docli_Linux_armv6.tar.gz"
      sha256 "31c8a374ef705829bad4420d3f691938a8ae14f67659e118c67d9c0512c82350"

      def install
        bin.install "docli"
      end
    end
    if Hardware::CPU.intel?
      url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.26/docli_Linux_x86_64.tar.gz"
      sha256 "a3b7d5edd71eaa903f0fd77d81c9f8fcacd8db4e31c96158249587aa159162e8"

      def install
        bin.install "docli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.26/docli_Linux_arm64.tar.gz"
      sha256 "9f0197ae7adbc22d864242d39ef6621dc3e445e17271336025330bb3cfa01d46"

      def install
        bin.install "docli"
      end
    end
  end
end
