cask "picoscope" do
  version "6.14.62"
  sha256 "ec54bf083e1c9b1268828ebb8c7de5f490a2403e219dd6dd7b88b27864e2f168"

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
