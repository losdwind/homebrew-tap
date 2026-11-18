cask "unimetype" do
  version "1.1.4"
  sha256 "1287b980cf61f3e27151a501b2ba7ac3d758b5e0c97b88d6adf821083fcd5ea3"

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
