cask "brother-p-touch-update-software" do
  os = {
    high_sierra: "10046",
    mojave:      "10051",
    catalina:    "10057",
    big_sur:     "10064",
    monterey:    "10071",
  }

  if MacOS.version <= :catalina
    version "1.5.5,15,100785"
    sha256 "c6e1afdb1daf04c143532f9dab019a764a2f6e07567c1b42d61d34232b990c32"
  else
    version "1.5.6,110,100885"
    sha256 "179cd72961d1f2b8fba1146a4b636ca1529e8fc8adecac0165111ac36bd85a7a"
  end

  url "https://download.brother.com/welcome/dlfp#{version.csv[2]}/pum#{version.csv[0].no_dots}x#{version.csv[1]}all.dmg"
  name "Brother P-touch Update Software"
  desc "Software for Brother P-touch label printers"
  homepage "https://support.brother.com/"

  livecheck do
    url "https://support.brother.com/g/b/downloadlist.aspx?c=nz&lang=en&prod=d800weas&os=#{os[MacOS.version.to_sym]}"
    strategy :page_match do |page|
      download_match = page.match(/href=["']?([^"' >]*?)["']?>P-touch Update Software \(Mac\)</i)
      next if download_match.blank?

      version_match = download_match.post_match.match(/\((\d+(?:\.\d+)+)\)/)
      next if version_match.blank?

      download_page = Homebrew::Livecheck::Strategy.page_content(
        URI.join("https://support.brother.com/", download_match[1].sub("downloadend.aspx", "downloadhowto.aspx")),
      )
      next if download_page[:content].blank?

      dlfp_match = download_page[:content].match(%r{href=.*?/dlfp(\d+)/pum(\d+)x(\d+)all\.dmg}i)
      next if dlfp_match.blank?
      next if dlfp_match[2] != version_match[1].tr(".", "")

      "#{version_match[1]},#{dlfp_match[3]},#{dlfp_match[1]}"
    end
  end

  depends_on macos: os.keys

  pkg "BrotherPtUpdateSoftware.pkg"

  uninstall pkgutil: [
    "com.Brother.Brotherdriver.BrotherPtUpdateSoftware",
    "com.brother.brotherptdriver.BrotherPtUpdateSoftware",
  ]
end
