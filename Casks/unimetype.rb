cask "unimetype" do
  version "1.1.3"
  sha256 "e29f16aa19c55b98c0197a1889378e3f99c4d7131ebe46b61b2b073231a3b7b5"

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
