cask "hhkb-pro-driver" do
  version "5.1"
  sha256 "08518539c02e6dae7ee93f4188be9665e8c2b1e33f0fea681fa6cfc4dffc383b"

  url "https://www.pfu.fujitsu.com/hhkeyboard/downloads/HHKBProDriver#{version}.dmg"
  name "PFU Happy Hacking Keyboard Professional Driver"
  desc "Driver for HHKB Professional"
  homepage "https://www.pfu.fujitsu.com/hhkeyboard/macdownload.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/HHKBProDriver(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "HHKB Pro Driver.app"
end
