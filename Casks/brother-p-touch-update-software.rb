cask "brother-p-touch-update-software" do
  version "1.5.6,110,dlfp100885"
  sha256 "179cd72961d1f2b8fba1146a4b636ca1529e8fc8adecac0165111ac36bd85a7a"

  url "https://download.brother.com/welcome/#{version.csv[2]}/pum#{version.csv[0].no_dots}x#{version.csv[1]}all.dmg"
  name "Brother P-touch Update Software"
  homepage "https://support.brother.com/"

  pkg "BrotherPtUpdateSoftware.pkg"

  uninstall pkgutil: [
    "com.brother.brotherptdriver.BrotherPtUpdateSoftware",
    "com.Brother.Brotherdriver.BrotherPtUpdateSoftware",
  ]
end
