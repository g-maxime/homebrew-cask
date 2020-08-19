cask "mediainfo" do
  version "20.08.1"
  sha256 "9e162416929236d8cba905eb8e1ec602719fef1a221855dfff60e13c68dc5005"

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
