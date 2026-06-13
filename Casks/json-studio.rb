cask "json-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "3770fea47e821bfad7985c8fcd0fdb14f5743f2478cadc9583d169f1ad131f45",
         intel: "94882469f41b98b264efbdac655bf2dad189879b1fad557f3452873b8d4503cf"

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
