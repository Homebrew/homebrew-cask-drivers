cask "sony-ps4-remote-play" do
  version :latest
  sha256 :no_check

  url "https://remoteplay.dl.playstation.net/remoteplay/module/mac/RemotePlayInstaller.pkg"
  name "PS4 Remote Play"
  desc "Application to control your PlayStation 4"
  homepage "https://remoteplay.dl.playstation.net/remoteplay/"

  depends_on macos: ">= :yosemite"

  pkg "RemotePlayInstaller.pkg"

  uninstall pkgutil: "com.playstation.RemotePlay.pkg"

  zap trash: [
    "~/Library/Application Support/Sony Corporation/PS4 Remote Play",
    "~/Library/Application Support/Sony Corporation/PS Remote Play",
    "~/Library/Caches/com.playstation.RemotePlay",
    "~/Library/Cookies/com.playstation.RemotePlay.binarycookies",
    "~/Library/Preferences/com.playstation.RemotePlay.plist",
    "~/Library/WebKit/com.playstation.RemotePlay",
  ]
end
