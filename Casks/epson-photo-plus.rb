cask "epson-photo-plus" do
  version "3.5.0"
  sha256 "c7c768bb684cf9affd2df083f6fe6b137c58d7a75e0ee751bace6e734caa8c04"

  url "https://ftp.epson.com/drivers/EPPlus_v#{version.no_dots}.dmg"
  name "Epson Photo+"
  desc "Arrange and print photos, including direct printing to discs"
  homepage "https://epson.com/"

  livecheck do
    url "https://epson.com/Support/Printers/Single-Function-Inkjet-Printers/SureColor-Series/Epson-SureColor-P900/s/SPT_C11CH37201"
    regex(%r{href=.*?/EPPlus_v(\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match&.first&.gsub(/(\d)(?!$)/, '\1.')
      end
    end
  end

  auto_updates true

  depends_on macos: ">= :el_capitan"

  pkg "Epson Photo Plus.pkg"

  uninstall pkgutil: "com.epson.pkg.EpsonPhotoPlus"
end
