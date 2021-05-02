cask "picoscope" do
  version "6.14.44.5870"
  sha256 "2dd29c6baa1e93be9f9160319a27fdb4308681fa616b2be66493e6b5e439c2cd"

  url "https://www.picotech.com/download/software/sr/PicoScope-#{version}.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/"
    strategy :page_match
    regex(%r{href=.*?/PicoScope-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "PicoScope-#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope6"
end
