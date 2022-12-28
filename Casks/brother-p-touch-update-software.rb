cask "brother-p-touch-update-software" do
  on_high_sierra :or_older do
    version "1.5.5,15,100785,10046"
    sha256 "c6e1afdb1daf04c143532f9dab019a764a2f6e07567c1b42d61d34232b990c32"
  end
  on_mojave do
    version "1.5.5,15,100785,10051"
    sha256 "c6e1afdb1daf04c143532f9dab019a764a2f6e07567c1b42d61d34232b990c32"
  end
  on_catalina do
    version "1.5.5,15,100785,10057"
    sha256 "c6e1afdb1daf04c143532f9dab019a764a2f6e07567c1b42d61d34232b990c32"
  end
  on_big_sur do
    version "1.5.6,110,100885,10064"
    sha256 "179cd72961d1f2b8fba1146a4b636ca1529e8fc8adecac0165111ac36bd85a7a"
  end
  on_monterey do
    version "1.5.6,110,100885,10071"
    sha256 "179cd72961d1f2b8fba1146a4b636ca1529e8fc8adecac0165111ac36bd85a7a"
  end
  on_ventura :or_newer do
    version "1.5.6,110,100885,10078"
    sha256 "179cd72961d1f2b8fba1146a4b636ca1529e8fc8adecac0165111ac36bd85a7a"
  end

  url "https://download.brother.com/welcome/dlfp#{version.csv.third}/pum#{version.csv.first.no_dots}x#{version.csv.second}all.dmg"
  name "Brother P-touch Update Software"
  desc "Software for Brother P-touch label printers"
  homepage "https://support.brother.com/"

  livecheck do
    url "https://support.brother.com/g/b/downloadlist.aspx?c=nz&lang=en&prod=d800weas&os=#{version.csv[3]}"
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

      "#{version_match[1]},#{dlfp_match[3]},#{dlfp_match[1]},#{version.csv[3]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "BrotherPtUpdateSoftware.pkg"

  uninstall pkgutil: [
    "com.Brother.Brotherdriver.BrotherPtUpdateSoftware",
    "com.brother.brotherptdriver.BrotherPtUpdateSoftware",
  ]
end
