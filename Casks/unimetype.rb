cask "unimetype" do
  version "1.1.8"
  sha256 "dfc89b8a53c3ecd732b24c07e91286219f111d15befd3af46763cd3e00422b69"

  url "https://downloads.unimetype.com/releases/macos-v#{version}/UnimeTypeMac.dmg"
  name "UnimeType"
  desc "Multilingual input method for mixed-script typing from a Latin keyboard"
  homepage "https://unimetype.com/"

  livecheck do
    url "https://downloads.unimetype.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "UnimeTypeMac.app"

  zap trash: [
    "~/Library/Application Support/UnimeType",
    "~/Library/Caches/com.figurich.unimetype.mac",
    "~/Library/HTTPStorages/com.figurich.unimetype.mac",
    "~/Library/Input Methods/UnimeType.app",
    "~/Library/Preferences/com.figurich.unimetype.mac.plist",
  ]
end
