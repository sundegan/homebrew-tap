cask "json-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "5b6d5bab9ca65eb30d2e2c729c594b6cdc02cc41759c9d6a0637c02e9d9beb17",
         intel: "f517a5f596e575f13d91f61e741187793357e2fb2510e626d399d0b6cffbbf33"

  url "https://github.com/sundegan/JsonStudio/releases/download/v#{version}/Json.Studio_#{version}_macos_#{arch}.dmg",
      verified: "github.com/sundegan/JsonStudio/"
  name "Json Studio"
  desc "Fast, local-first JSON workspace for everyday development"
  homepage "https://jsonstudio.js.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "Json Studio.app"

  zap trash: [
    "~/Library/Application Support/com.jsonstudio.app",
    "~/Library/Preferences/com.jsonstudio.app.plist",
    "~/Library/Saved Application State/com.jsonstudio.app.savedState",
  ]
end
