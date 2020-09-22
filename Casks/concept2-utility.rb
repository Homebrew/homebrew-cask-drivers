cask "concept2-utility" do
  if MacOS.version <= :el_capitan
    version "7.09.02"
    sha256 "e4ebee8cde57c7ef63c3903285c3fc0ee8f87221e7c5529b9dcf97b3f9ebb57e"
  else
    version "7.10.01"
    sha256 "2bccb53d1070cb3263bdcdb85f25923f3cf369942b99cf550e88ae4a80febe89"
  end

  url "https://software.concept2.com/utility/Concept2Utility#{version.no_dots}.dmg"
  appcast "https://www.concept2.com/service/software/concept2-utility",
          must_contain: version.no_dots
  name "Concept2 Utility"
  homepage "https://www.concept2.com/service/software/concept2-utility"

  depends_on macos: ">= :yosemite"

  pkg "Concept2 Utility #{version}.pkg"

  uninstall pkgutil: "com.concept2.pkg.Concept2Utility"
end
