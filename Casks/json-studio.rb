cask "json-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "68d968b1ff78598efc5a0224fc30dac250235d950b984c9a2979512c57ef4f8a",
         intel: "f145abc77c2ea3b915e4f80837dc84a74b49f7616bc477187c32797087379615"

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
