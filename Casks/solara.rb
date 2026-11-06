cask "solara" do
  version "0.2.5"
  sha256 "1f5b2f232f50f994eea61ab2fee720944590e938972c58a7aa56570d495891da"

  url "https://github.com/andrewbenson/solara/releases/download/v#{version}/Solara-#{version}.dmg"
  name "Solara"
  desc "Web browser with a sidebar, built on Chromium"
  homepage "https://github.com/andrewbenson/solara"

  livecheck do
    url "https://github.com/andrewbenson/solara/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Solara.app"

  zap trash: [
    "~/Library/Application Support/network.benson.solara",
    "~/Library/Application Support/Solara",
    "~/Library/Caches/network.benson.solara",
    "~/Library/HTTPStorages/network.benson.solara",
    "~/Library/HTTPStorages/network.benson.solara.binarycookies",
    "~/Library/Preferences/network.benson.solara.plist",
    "~/Library/Saved Application State/network.benson.solara.savedState",
  ]
end
