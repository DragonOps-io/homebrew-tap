# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dragonops < Formula
  desc "DragonOps CLI to deploy and manage cloud infrastructure"
  homepage "https://github.com/DragonOps-io/homebrew-tap"
  version "0.0.107"

  on_macos do
    on_intel do
      url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.107/docli_Darwin_x86_64.tar.gz"
      sha256 "bf4eaac5bfdaa0bda8af9ca9aa5f7b1a578a19908d07f3f80e0b1bbd0400efc1"

      def install
        bin.install "dragonops"
      end
    end
    on_arm do
      url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.107/docli_Darwin_arm64.tar.gz"
      sha256 "4719e15e25ad87724b940962ffe96445620cbf05146cc9be791a6504f22eb019"

      def install
        bin.install "dragonops"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.107/docli_Linux_x86_64.tar.gz"
        sha256 "6892c483e686fdbef6a51e87d62c74e3afea838cda480e25789d03966495c8c1"

        def install
          bin.install "dragonops"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.107/docli_Linux_armv6.tar.gz"
        sha256 "520c9b287702cd324494adb6495ba9af53510645fc3bc6ef6a2bd5b9847a2adc"

        def install
          bin.install "dragonops"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dragonops-cli-releases.s3.amazonaws.com/dragonops-cli/0.0.107/docli_Linux_arm64.tar.gz"
        sha256 "e0458c9f73c8696abc841b9d77664d243157dfa8c6badbacd061c23e3b34476b"

        def install
          bin.install "dragonops"
        end
      end
    end
  end
end
