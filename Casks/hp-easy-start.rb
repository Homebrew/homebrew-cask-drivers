cask "hp-easy-start" do
  version :latest
  sha256 :no_check

  url "https://ftp.hp.com/pub/softlib/software12/HP_Quick_Start/osx/HP_Easy_Start.app.zip"
  name "HP Easy Start"
  homepage "https://support.hp.com/"

  app "HP Easy Start.app"

  zap trash: [
    "~/Library/Caches/com.hp.hp-easy-start",
    "~/Library/Cookies/com.hp.hp-easy-start.binarycookies",
    "~/Library/Logs/HP Easy Start.log",
    "~/Library/Preferences/com.hp.hp-easy-start.plist",
  ]
end
