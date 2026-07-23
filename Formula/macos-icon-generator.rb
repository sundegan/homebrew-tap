class MacosIconGenerator < Formula
  desc "Generate macOS-style icons from square SVG, PNG, or JPEG images"
  homepage "https://github.com/sundegan/macos-icon-generator"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v#{version}/macos-icon-generator-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0ed8bc6e9fb67362e28230158819bf0de98da5b9376f9a697e53abf35d01e5b0"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v#{version}/macos-icon-generator-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "faf6d554f7dc23dd2e4b7241ba1584691a8566bbc1ec4d2bfa2d51d2be6f39f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v#{version}/macos-icon-generator-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab08ea75dc0ceb913a526b198510fdd9e50b7813b9fa901b1b2b5a000968418f"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v#{version}/macos-icon-generator-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd4ae32f491f83547800dfbeab03575a54d4f87762d5e7bdd928f97d3dc0d821"
    end
  end

  def install
    bin.install "macos-icon-generator"
  end

  test do
    assert_match "Usage: macos-icon-generator", shell_output("#{bin}/macos-icon-generator --help")
  end
end
