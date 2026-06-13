cask "json-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "7c76c381ded6408ae9536ed8f5fe11479bf7d336027443c571120b519c4341d3",
         intel: "e7aae8ac52711846844de0912959857137f015291a1980d1f495d180fce3f681"

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
