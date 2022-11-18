cask "epson-print-layout" do
  version "1.5.5"
  sha256 "96d7b7d55a2f81e39cfa7a71605e37c8bf68b8429a8f30de730292cef83a1b88"

  url "https://ftp.epson.com/drivers/EPL_#{version.no_dots}.dmg"
  name "Epson Print Layout"
  desc "Quick and easy color-managed printing"
  homepage "https://epson.com/"

  livecheck do
    url "https://epson.com/epson-print-layout"
    regex(%r{href=.*?/EPL_(\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match&.first&.gsub(/(\d)(?!$)/, '\1.')
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  pkg "Epson Print Layout.pkg"

  uninstall pkgutil: "com.epson.printlayout.pkg"
end
