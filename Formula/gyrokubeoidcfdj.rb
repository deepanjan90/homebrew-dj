# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gyrokubeoidcfdj < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://example.com/"
  version "0.6.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/deepanjan90/kube-oidc-dj/releases/download/v0.6.0/kube-oidc-dj_0.6.0_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "687430267e458af9e5bea6b48034f6ba2a4f743414545930c1d9a6f447594876"
    end
    if Hardware::CPU.arm?
      url "https://github.com/deepanjan90/kube-oidc-dj/releases/download/v0.6.0/kube-oidc-dj_0.6.0_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "10916cd690412c75f4658240f2b37a84741b1efc732f709b7422cfba7d623540"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deepanjan90/kube-oidc-dj/releases/download/v0.6.0/kube-oidc-dj_0.6.0_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6ba437651372e958c716944cb18ed2dd6642a3035096b4481d1053ca420186c4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deepanjan90/kube-oidc-dj/releases/download/v0.6.0/kube-oidc-dj_0.6.0_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "dab9a1bfb8b67cf55c1b774ca73e4b6303b792467a645051197ff468614a4551"
    end
  end

  depends_on "git"
  depends_on "zsh" => :optional

  conflicts_with "svn"
  conflicts_with "bash"

  def install
    bin.install "program"
  end

  def caveats; <<~EOS
    How to use this binary
  EOS
  end

  plist_options :startup => false

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>

  EOS
  end

  test do
    system "#{bin}/program --version"
  end
end
