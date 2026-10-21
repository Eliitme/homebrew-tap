cask "cluvia" do
  version "0.1.1"
  sha256 "db86e7514231facf4205cb31661e57e60469d0aa5c8c22020a0bf6005e30626d"

  url "https://github.com/Eliitme/Cluvia/releases/download/v#{version}/Cluvia-#{version}.dmg"
  name "Cluvia"
  desc "Native Kubernetes GUI"
  homepage "https://github.com/Eliitme/Cluvia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Cluvia.app"

  zap trash: [
    "~/Library/Application Support/Cluvia",
    "~/Library/Caches/app.cluvia.Cluvia",
    "~/Library/HTTPStorages/app.cluvia.Cluvia",
    "~/Library/Preferences/app.cluvia.Cluvia.plist",
    "~/Library/Saved Application State/app.cluvia.Cluvia.savedState",
  ]
end
