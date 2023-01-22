cask "epson-print-layout" do
  version "1.5.8"
  sha256 "baa63074b98628cf24aa7fe56ec82961eacb22d6738b445abfbfb9380c7918e8"

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
