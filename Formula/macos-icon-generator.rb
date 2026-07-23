class MacosIconGenerator < Formula
  desc "Generate macOS-style icons from square SVG, PNG, or JPEG images"
  homepage "https://github.com/sundegan/macos-icon-generator"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v#{version}/macos-icon-generator-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7f2c6bf2e1867ac2af00b44984493a6d2b16737c31a286826f15738ac9729abf"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v#{version}/macos-icon-generator-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "447af65fc251a7349455480c35f7b11574e16abd69763217c00174a5cea7351e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v#{version}/macos-icon-generator-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ee7e9ca95fa5cccc265f1fc8900fc8d01e77b32ca18edf34d43710340b530a9"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v#{version}/macos-icon-generator-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "641571c4ba8edd674c2d9a3c08ca9baa4a0392493cefe9f3671dd9b8903e709e"
    end
  end

  def install
    bin.install "macos-icon-generator"
  end

  test do
    assert_match "Usage: macos-icon-generator", shell_output("#{bin}/macos-icon-generator --help")
  end
end
