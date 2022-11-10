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
  depends_on "curl"
  depends_on "wget"
  depends_on "jq"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_macOS_arm64.tar.gz"
      sha256 "d1f436713b10005a557d54c9c650b72dea9f0e2b3414457ffd1865b4ee66b482"

      def install
        bin.install "qleetctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_macOS_x86_64.tar.gz"
      sha256 "cd5894575af19f4fa27b29cc1d4ac48f0afda3ba8fc5048215323e575d2e6709"

      def install
        bin.install "qleetctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_Linux_x86_64.tar.gz"
      sha256 "45b8f110fd77599b5015902b26368867c73b27205a8465525414212e32881d62"

      def install
        bin.install "qleetctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_Linux_arm.tar.gz"
      sha256 "83306aa852fe9add2079f78698f140d7f080a7f607091b28b98d5706ee92dd35"

      def install
        bin.install "qleetctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.1/qleetctl_v0.1.1_Linux_arm64.tar.gz"
      sha256 "057027c37249278897268ecfae8e7d683f30072db66ead685c8aa3dd7de667f1"

      def install
        bin.install "qleetctl"
      end
    end
  end

  test do
    system "#{bin}/qleetctl version"
  end
end
