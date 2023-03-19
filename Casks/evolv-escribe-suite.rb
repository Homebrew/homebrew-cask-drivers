cask "evolv-escribe-suite" do
  version "2_SP50"
  sha256 "5a81ea3eb57536156cca935abf17204debc997b2727098b2d2c87dad5b8ee72a"

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INT.pkg"
  name "EScribe Suite"
  desc "Configure, monitor, and modify the operation of your DNA device"
  homepage "https://www.evolvapor.com/"

  livecheck do
    url "https://www.evolvapor.com/escribe"
    regex(%r{href=.*?/SetupEScribe(\d+_SP\d+(?:_\d+)?)_INT\.pkg}i)
  end

  pkg "SetupEScribe#{version}_INT.pkg"

  uninstall pkgutil: [
              "org.ecigstats.Main",
              "com.evolvapor.EScribe.Suite",
            ],
            script:  {
              executable: "/Applications/EScribe Suite.app/Contents/MacOS/ECigStats.app/Contents/MacOS/RunProgram",
              args:       ["--exit"],
            }
end
