cask "focusrite-thunderbolt" do
  version "4.9.3,0"
  sha256 "350bc7d3ae6a8bfa934ec664772203ea85f970b0ea88c784847cc93d9ad75c44"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/s3fs-public/downloads/FocusriteThunderboltMac_#{version.csv.first}-release_#{version.csv.second}.dmg"
  name "Focusrite Thunderbolt"
  desc "Thunderbolt driver for Focusrite devices"
  homepage "https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=545"

  livecheck do
    url "https://downloads.focusrite.com/focusrite/clarett/clarett-octopre"
    strategy :page_match do |page|
      match = page.match(%r{/FocusriteThunderboltMac_(\d+(?:\.\d+)*)-release_(\d+).dmg"}i)
      "#{match[1]},#{match[2]}"
    end
  end

  pkg "FocusritePCIe.pkg"

  preflight do
    staged_path.glob("FocusritePCIe-*.pkg").first.rename(staged_path/"FocusritePCIe.pkg")
  end

  uninstall pkgutil: [
    "com.focusrite.pkg.FocusritePCIe.audio_driver",
    "com.focusrite.pkg.FocusritePCIe.midi_driver",
  ]
end
