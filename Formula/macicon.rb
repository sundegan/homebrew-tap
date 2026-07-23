class Macicon < Formula
  desc "Generate macOS-style icons from square SVG, PNG, or JPEG images"
  homepage "https://github.com/sundegan/macos-icon-generator"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.3/macicon-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "7c9f84f7987295df8e93d137774f3a0a8c7eba3d94a34edee73bd3e96cba7d09"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.3/macicon-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "5a5ac1d08705e3a2f56a9c752314831e17f742d83471c30571d946814f16e87a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.3/macicon-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2816600a55c6323dda6b69c48093ca627434e2461a7408f7d7f77f33e2414f40"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.3/macicon-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69f7291c99d6610239b0ac6a890051d4b49620e3ea194af87f660ed8bff405b2"
    end
  end

  def install
    bin.install "macicon"
  end

  test do
    assert_match "Usage: macicon", shell_output("#{bin}/macicon --help")
  end
end
