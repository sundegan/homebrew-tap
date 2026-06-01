cask "json-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "f06709af752bce8c71897b459a9ea4c12e7d02bd941d5f1add7c616a6fca5ad8",
         intel: "f9e806411911bc04b7674c483109c2c22ae9e551d0cab9b351c10f9a180d646f"

  url "https://github.com/sundegan/JsonStudio/releases/download/v#{version}/Json.Studio_#{version}_macos_#{arch}.dmg",
      verified: "github.com/sundegan/JsonStudio/"
  name "Json Studio"
  desc "Fast, local-first JSON workspace for everyday development"
  homepage "https://jsonstudio.js.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Json Studio.app"

  zap trash: [
    "~/Library/Application Support/com.jsonstudio.app",
    "~/Library/Preferences/com.jsonstudio.app.plist",
    "~/Library/Saved Application State/com.jsonstudio.app.savedState",
  ]
end
