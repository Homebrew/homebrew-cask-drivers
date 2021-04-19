cask "concept2-utility" do
  if MacOS.version <= :sierra
    version "7.09.02"
    sha256 "e4ebee8cde57c7ef63c3903285c3fc0ee8f87221e7c5529b9dcf97b3f9ebb57e"
  else
    version "7.10.01"
    sha256 "652727e61e0db60b94d74fbb14753872f54c896c71e5d15febdd34764378dee0"
  end

  url "https://software.concept2.com/utility/Concept2Utility#{version.no_dots}.dmg"
  name "Concept2 Utility"
  desc "Utilities for the Concept2 Performance Monitor"
  homepage "https://www.concept2.com/service/software/concept2-utility"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Concept2\s+Utility\s+(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :yosemite"

  pkg "Concept2 Utility #{version}.pkg"

  uninstall pkgutil: "com.concept2.pkg.Concept2Utility"
end
