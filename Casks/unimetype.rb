cask "unimetype" do
  version "1.1.6"
  sha256 "deb8d5e2d363b998f71444d5eef01e4f7c470a5dc28db2c092ca6a3c36547a1b"

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
