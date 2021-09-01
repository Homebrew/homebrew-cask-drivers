cask "evolv-escribe-suite" do
  version "2_SP30"
  sha256 "2131fc9c50af27acb68c82feae54f30839da6545d6b74d6b218dea9317ca8fa4"

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INT.pkg"
  name "EScribe Suite"
  desc "Configure, monitor, and modify the operation of your DNA device"
  homepage "https://www.evolvapor.com/"

  livecheck do
    url "https://www.evolvapor.com/escribe"
    strategy :page_match
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
