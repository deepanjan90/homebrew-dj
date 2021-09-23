# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GyrokubeoidcfAT1.0.2 < Formula
  desc "Gyro kube login test"
  homepage "https://github.com/deepanjan90/hello-world"
  url "https://github.com/deepanjan90/hello-world/releases/download/release%2F0.0.1/gyro-kube-oidc.tar.gz"
  sha256 "a0ce0a6fed29aaf7f851d151f8afe1e104f0b06bcfc5c985a2c5efa4369276c0"
  version "1.0.2"
  license ""

  # depends_on "cmake" => :build

  def install
    bin.install 'gyro-kube-oidc' => 'gyro-kube-oidc'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gyro-kube-oidc-f`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
