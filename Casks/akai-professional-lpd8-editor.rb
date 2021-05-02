cask "akai-professional-lpd8-editor" do
  version "2.0.2"
  sha256 :no_check

  url "https://www.akaipro.com/amfile/file/download/file/814/product/40/"
  name "Akai Professional LPD8 Editor"
  desc "LPD8 USB MIDI pad controller editor"
  homepage "https://www.akaipro.com/lpd8-lpd8"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Akai Professional LPD8 Editor.app"
end
