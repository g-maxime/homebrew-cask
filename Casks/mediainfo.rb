cask "mediainfo" do
  version "21.03"
  sha256 "7309410ac0c5321b38ea54b88d26f3975ef52dcb0788aeb8228041c2a23914ba"

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast "https://mediaarea.net/rss/mediainfo_updates.xml"
  name "MediaInfo"
  homepage "https://mediaarea.net/en/MediaInfo"

  depends_on macos: ">= :high_sierra"

  app "MediaInfo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mediaarea.mediainfo.mac-old.sfl*",
    "~/Library/Preferences/net.mediaarea.mediainfo.mac-old.plist",
    "~/Library/Saved Application State/net.mediaarea.mediainfo.mac-old.savedState",
  ]
end
