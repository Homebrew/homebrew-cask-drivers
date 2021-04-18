cask "logitech-myharmony" do
  version "1.0.0.97"
  sha256 "c5950b7c0461b5713f8896892291689e227046f7a4fc56fec790850f4b938fe0"

  url "https://app.myharmony.com/prod/mac/#{version.major_minor}/MyHarmony-App.dmg"
  appcast "https://app.myharmony.com/prod/mac/harmonycast.xml"
  name "MyHarmony"
  desc "Configuration software for Logitech Harmony universal remote control"
  homepage "https://setup.myharmony.com/"

  depends_on macos: "<= :mojave"

  pkg "MyHarmonySetup.pkg"

  uninstall quit:    "org.logitech.MyHarmony",
            pkgutil: "MyHarmony.pkg",
            rmdir:   "/Applications/MyHarmony.app"

  caveats do
    discontinued
    <<~EOS
      MyHarmony is a 32-bit app and will not run on macOS 10.15 & above.
      It has been deprecated in favor of Harmony Desktop app and mobile app.
    EOS
  end
end
