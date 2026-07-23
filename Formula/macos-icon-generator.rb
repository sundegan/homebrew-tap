class MacosIconGenerator < Formula
  desc "Generate macOS-style icons from square SVG, PNG, or JPEG images"
  homepage "https://github.com/sundegan/macos-icon-generator"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.2/macos-icon-generator-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "41afcdf0553b18398e5f47be83dbe5522db2c72f2ba7343399277df42516a754"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.2/macos-icon-generator-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "f68f05db48a047d67c993169df049a7ab37565b82818ce18b38bb0afd268aab7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.2/macos-icon-generator-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb02edeb256d414defe855727a924f0d5a5b4448aa5430df31a753e664179f98"
    else
      url "https://github.com/sundegan/macos-icon-generator/releases/download/v0.1.2/macos-icon-generator-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10a54d3892f07156c1736c80c70e511a9fa1951bc8e3f0c8069d0acb09c806b9"
    end
  end

  def install
    bin.install "macos-icon-generator"
  end

  test do
    assert_match "Usage: macos-icon-generator", shell_output("#{bin}/macos-icon-generator --help")
  end
end
