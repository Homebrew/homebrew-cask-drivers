cask "canon-pixma25xx-printer" do
  version "16.40.1.0,21.3"
  sha256 "d91cf94015a8df158d1689bda0deb38103381abafeb7b09ccd4e0e9b9f4c9d53"

  url "https://gdlp01.c-wss.com/gds/9/0100005379/11/mcpd-mac-mg2500-#{version.before_comma.dots_to_underscores}-ea#{version.after_comma.dots_to_underscores}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Pixma MG25XX series Printer Driver"
  desc "Printer driver for Canon Pixma MG25XX series printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  livecheck do
    url "https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=33076&os=MACOS_10_15&type=DS&lang=English"
    regex(/mcpd-mac-mg2500-(\d+(?:[._]\d+)+)-ea(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1].tr('_','.')},#{match[2].tr('_','.')}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "PrinterDriver_MG2500 series_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.MG2500-#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
