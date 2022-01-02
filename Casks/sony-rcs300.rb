cask "sony-rcs300" do
  version "1.0.0"

  if Hardware::CPU.intel?
    suffix = ""
    sha256 "55183d65fc180544ac58ab3a6851980f63d47afdfc2b447ab9416bee7f32f99b"
  else
    suffix = "1"
    sha256 "429f0481a2a04c2a31579ac9b26716c343633342b112130660e5e79a701c10b9"
  end

  url "https://www.sony.co.jp/Products/felica/consumer/support/download/driver/usbdriver/usbdriver#{suffix}-s300-v#{version}.dmg"
  name "SONY USB Driver for RC-S300"
  desc "SONY CCID CardReader RC-S300 Driver"
  homepage "https://www.sony.co.jp/Products/felica/consumer/products/RC-S300.html"

  livecheck do
    url "https://www.sony.co.jp/Products/felica/consumer/support/download/usbdriver.html"
    strategy :page_match
    regex(%r{href=.*?/usbdriver#{suffix}-s300-v(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  pkg "ccid-rcs300_installer.pkg"

  uninstall pkgutil: "jp.co.sony.ccid-rcs300"

  caveats do
    reboot
  end
end
