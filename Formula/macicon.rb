class Macicon < Formula
  desc "Generate and prepare macOS icon assets"
  homepage "https://github.com/sundegan/macos-icon-generator"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v1.0.1/macicon-aarch64-apple-darwin.tar.gz"
      sha256 "83b439b725f4cad9576b8cad09b6322fe0497d2bb1be5b05e69dc65c52b271d7"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v1.0.1/macicon-x86_64-apple-darwin.tar.gz"
      sha256 "c2659b4491808ee3d06cbb74c4a4440b1ccc6d6c400d4aaa61943dc58c9dfcb3"
    end
  end

  def install
    bin.install "macicon"
  end

  test do
    assert_match "Usage: macicon", shell_output("#{bin}/macicon --help")
  end
end
