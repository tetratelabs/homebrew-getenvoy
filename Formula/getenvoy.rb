# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Getenvoy < Formula
  desc "Install and run Envoy"
  homepage "https://github.com/tetratelabs/getenvoy"
  version "0.3.0"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tetratelabs/getenvoy/releases/download/v0.3.0/getenvoy_0.3.0_darwin_amd64.tar.gz"
      sha256 "f2f0cf1c5d9dc1c351a7ac2b19f920d93ed472ab1c1d7568bedfb555335ecaeb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/tetratelabs/getenvoy/releases/download/v0.3.0/getenvoy_0.3.0_darwin_arm64.tar.gz"
      sha256 "becd23a9d358b2dd3b9bb35fd287f3c14b4428d201b423610254f87e575b7085"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tetratelabs/getenvoy/releases/download/v0.3.0/getenvoy_0.3.0_linux_amd64.tar.gz"
      sha256 "f976fdcc0fecdd3bef250f0e5ce2023e30201022170024c0f8dba8d1258feb2d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tetratelabs/getenvoy/releases/download/v0.3.0/getenvoy_0.3.0_linux_arm64.tar.gz"
      sha256 "bc78277a27b8151a09b980a4743794b77b8a21f5f1181db1f2e1667a0f3da6c3"
    end
  end

  def install
    bin.install "getenvoy"
  end

  test do
    system "#{bin}/getenvoy -v"
  end
end
