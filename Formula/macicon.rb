class Macicon < Formula
  desc "Generate and prepare macOS icon assets"
  homepage "https://github.com/sundegan/macos-icon-generator"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v1.0.2/macicon-aarch64-apple-darwin.tar.gz"
      sha256 "a8e08a9c58db11d44f6f30dd4bf9c50683b9606f99bc27cdaf4b671cf7e1a896"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v1.0.2/macicon-x86_64-apple-darwin.tar.gz"
      sha256 "a5c70ff0be457b39c53d1a481d8e87f234bbc3249f70c3eef3afbbb885eb27fc"
    end
  end

  def install
    bin.install "macicon"
  end

  test do
    assert_match "Usage: macicon", shell_output("#{bin}/macicon --help")
  end
end
