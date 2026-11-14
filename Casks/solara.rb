cask "solara" do
  version "0.3.5"
  sha256 "37055b7c1f1ff1e1a9539a4909f8c138a296fb8e83ec0575be8177ce42807f4a"

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
