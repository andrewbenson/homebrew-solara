cask "solara" do
  version "0.3.0"
  sha256 "ab0a46c5ce8cf1cf74f9b1608a8cda22fdaccaf3d7f6e1081db77eab9490cbb9"

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
  depends_on macos: :tahoe

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
