class Macicon < Formula
  desc "Generate and prepare macOS icon assets"
  homepage "https://github.com/sundegan/macos-icon-generator"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.4/macicon-aarch64-apple-darwin.tar.gz"
      sha256 "9400cf46ffefd77dc885b40e93de1c14e3345a3aa3dc6f0879006e8c0c2e6030"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.4/macicon-x86_64-apple-darwin.tar.gz"
      sha256 "a77ccca3e0cb8da4c228947e380d98bcea9f62077bf677e4b4ccf73977740b42"
    end
  end

  def install
    bin.install "macicon"
  end

  test do
    assert_match "Usage: macicon", shell_output("#{bin}/macicon --help")
  end
end
