class Macicon < Formula
  desc "Generate and prepare macOS icon assets"
  homepage "https://github.com/sundegan/macos-icon-generator"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v1.0.0/macicon-aarch64-apple-darwin.tar.gz"
      sha256 "771f8f2e0358d306363820c3da588f599a3ce733a83e94a1b7dff9f78a6990af"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v1.0.0/macicon-x86_64-apple-darwin.tar.gz"
      sha256 "79aca358521105cc89a3979a57f6a9fad031beec4d51c0b9f01a2fd8c8878679"
    end
  end

  def install
    bin.install "macicon"
  end

  test do
    assert_match "Usage: macicon", shell_output("#{bin}/macicon --help")
  end
end
