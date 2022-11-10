# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qleetctl < Formula
  desc "A CLI for managing the Qleet OS."
  homepage "https://github.com/qleet/qleetctl"
  version "0.1.1"
  license "MIT"

  depends_on "kubectl"
  depends_on "kind"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_macOS_x86_64.tar.gz"
      sha256 "2699f3721646655da75d31f6cc39cfcbbf2dd305be3d1c9610b32fa15497d630"

      def install
        bin.install "qleetctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_macOS_arm64.tar.gz"
      sha256 "0996eaa953b798d395b16393da4f77b79498de48634737cd167e56338649dd9a"

      def install
        bin.install "qleetctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_Linux_arm64.tar.gz"
      sha256 "09472f1e41948c294ee009d65e5dac963c9934501443cf54337e8f89b4ef98cb"

      def install
        bin.install "qleetctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_Linux_x86_64.tar.gz"
      sha256 "45d39b1c9e17a08aa496b6d517e587b85d3e55340bbe79ba0b9d44ebd934f6d0"

      def install
        bin.install "qleetctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_Linux_arm.tar.gz"
      sha256 "6fc638e903b60a78293065bde8506e3921c950f843e5d6e11b2139f7508abe32"

      def install
        bin.install "qleetctl"
      end
    end
  end

  test do
    system "#{bin}/qleetctl version"
  end
end
