cask "unimetype" do
  version "1.1.0"
  sha256 "93fc66a9728ffb2d7b2419a3201c1ec79e83e1d83ffb9747131491ad65e233e8"

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
