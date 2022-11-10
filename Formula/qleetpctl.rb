# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qleetpctl < Formula
  desc "A CLI for managing the Qleet OS."
  homepage "https://github.com/qleet/qleetctl"
  version "0.1.2"
  license "MIT"

  depends_on "kubectl"
  depends_on "kind"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.2/qleetctl_v0.1.2_macOS_x86_64.tar.gz"
      sha256 "e6b3fca6538af09581154c36c3167398f20506e9b77be81dea8b45b18a2f414b"

      def install
        bin.install "qleetctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.2/qleetctl_v0.1.2_macOS_arm64.tar.gz"
      sha256 "ba9aeae0ef2928b8a24705025dcd009fc2e8b478739875432739ee62569b28d6"

      def install
        bin.install "qleetctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.2/qleetctl_v0.1.2_Linux_x86_64.tar.gz"
      sha256 "833548eec72cebf3a828a3db373fb67539a5e006c4e4e0111d9ff89e49b882c8"

      def install
        bin.install "qleetctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.2/qleetctl_v0.1.2_Linux_arm.tar.gz"
      sha256 "c0cf1b1a84992446308aa648476479fca44cf89654dd9950cd11095ac962a49f"

      def install
        bin.install "qleetctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qleet/qleetctl/releases/download/v0.1.2/qleetctl_v0.1.2_Linux_arm64.tar.gz"
      sha256 "da7a81a84d6af7ca54c2e39215675a3b626ed3634ec251e91c09b6b2f641bb32"

      def install
        bin.install "qleetctl"
      end
    end
  end

  test do
    system "#{bin}/qleetctl version"
  end
end
