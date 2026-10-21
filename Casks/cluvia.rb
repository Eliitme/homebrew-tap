cask "cluvia" do
  version "0.2.0"
  sha256 "d1c6e197aaf68f7aec892c53c7356e6056621057c1eea3c73920fde22048d410"

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
