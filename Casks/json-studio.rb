cask "json-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "69021ec8d5c7420daad06b71712901c91ae7a5cbc442a2a649dfea0525cdf362",
         intel: "f91ebbc0abf11f9c407c3325a5b0145e71c7e4eafbddbd3cde7a97841437d175"

  url "https://github.com/sundegan/JsonStudio/releases/download/v#{version}/Json.Studio_#{version}_macos_#{arch}.dmg",
      verified: "github.com/sundegan/JsonStudio/"
  name "Json Studio"
  desc "Fast, local-first JSON workspace for everyday development"
  homepage "https://jsonstudio.js.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :high_sierra

  app "Json Studio.app"

  zap trash: [
    "~/Library/Application Support/com.jsonstudio.app",
    "~/Library/Preferences/com.jsonstudio.app.plist",
    "~/Library/Saved Application State/com.jsonstudio.app.savedState",
  ]
end
