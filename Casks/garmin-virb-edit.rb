cask "garmin-virb-edit" do
  version "5.4.3"
  sha256 "b58d481a30f24c7a2b4b753020ebe25250debd6bcaccceaa59684a0799e004d2"

  url "https://download.garmin.com/software/VIRBEditforMac_#{version.no_dots}.dmg"
  name "Garmin VIRB Edit"
  homepage "https://buy.garmin.com/en-US/US/p/573412"

  livecheck do
    url "https://www8.garmin.com/support/download_details.jsp?id=6593"
    regex(/version\s+(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "Install VIRB Edit.pkg"

  uninstall quit:    "com.garmin.VIRBEdit",
            pkgutil: [
              "com.garmin.VIRBEdit",
              "com.garmin.VirbEditPostFlight",
            ]
end
