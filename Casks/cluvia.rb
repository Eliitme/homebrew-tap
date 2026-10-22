cask "cluvia" do
  version "0.3.0"
  sha256 "4d8204788a73dd22191f7b3238670b9ac5182f284869101c1170ee732383d775"

  url "https://github.com/Eliitme/Cluvia/releases/download/v#{version}/Cluvia-#{version}.dmg"
  name "Cluvia"
  desc "Native Kubernetes GUI"
  homepage "https://github.com/Eliitme/Cluvia"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
