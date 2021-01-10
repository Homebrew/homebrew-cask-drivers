cask "hhkb-pro-driver" do
  version "5.0.1"
  sha256 "908a09868935ea67b527f8909c61b53b1e3e5b084cc8ac2cdc2db81436d7717f"

  url "https://www.pfu.fujitsu.com/hhkeyboard/downloads/HHKBProDriver#{version}.dmg"
  name "PFU Happy Hacking Keyboard Professional Driver"
  desc "Driver for HHKB Professional"
  homepage "https://www.pfu.fujitsu.com/hhkeyboard/macdownload.html"

  app "HHKB Pro Driver.app"
end
