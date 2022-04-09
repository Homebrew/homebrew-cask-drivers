cask "picoscope" do
  version "6.14.61"
  sha256 "62f30f18f939a71aaefa34b90f00d40afdb28ab5165d929a3fe8955292c85ffb"

  url "https://www.picotech.com/download/software/sr/PicoScope-#{version}.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/"
    regex(%r{href=.*?/PicoScope-(\d+(?:.\d+)*)\.pkg}i)
  end

  pkg "PicoScope-#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}"
end
