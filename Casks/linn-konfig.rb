cask "linn-konfig" do
  version "4.37.172"
  sha256 :no_check

  url "https://cloud.linn.co.uk/applications/konfig/releases/Davaar/konfig_latest_osx.pkg"
  name "Linn Konfig"
  desc "Control software for audio equipment"
  homepage "https://www.linn.co.uk/software"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "konfig_latest_osx.pkg"

  uninstall pkgutil: "uk.co.linn.Konfig"
end
