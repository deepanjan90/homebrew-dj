# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gyrokubeoidcfdj < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://example.com/"
  version "0.1.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/deepanjan90/kube-oidc-djj/releases/download/v0.1.0/kube-oidc-djj_0.1.0_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6e91c2ddb8bb1a59dd6aafeafb5b6c04a783f85e28c8272310bb7c928df02d2b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/deepanjan90/kube-oidc-djj/releases/download/v0.1.0/kube-oidc-djj_0.1.0_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6d231af574f332880db0b80ef4bd305dcaa10a7677f712f11b1d76e5def1e576"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deepanjan90/kube-oidc-djj/releases/download/v0.1.0/kube-oidc-djj_0.1.0_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2de681f3d0ea257d6f23c7e123796bf01902a012ac7f6a3f4a37352e21b9a299"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deepanjan90/kube-oidc-djj/releases/download/v0.1.0/kube-oidc-djj_0.1.0_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a092a91b54392214f7b86a4bf6f0f01e9280b4f0487193236bd6c1cf4677f02d"
    end
  end

  depends_on "argoproj/tap/kubectl-argo-rollouts"
  depends_on "awscli"
  depends_on "kubectl"
  depends_on "kubectx"
  depends_on "aws-iam-authenticator"
  depends_on "helm"
  depends_on "helmfile"
  depends_on "linkerd"
  depends_on "gettext"
  depends_on "jq"
  depends_on "python-yq"
  depends_on "sops"
  depends_on "direnv"
  depends_on "kube-ps1"
  depends_on "calicoctl"
  depends_on "int128/kubelogin/kubelogin"
  depends_on "git"
  depends_on "zsh" => :optional

  def install
    bin.install "kube-oidc-dj" => "kube-oidc-dj"
  end

  def caveats; <<~EOS
    Use kube-oidc-dj getToken to generate token to authenticate to an kubernetes cluster
  EOS
  end
end
