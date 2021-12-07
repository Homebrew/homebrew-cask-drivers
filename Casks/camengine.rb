cask "camengine" do
  version "4.0.63.2,21102201,0.0.8000.46"
  sha256 "e2c184fcb617c664c6407525c026bc30d73b8b6cccc6d9519568a848c3adafa6"

  url "https://storage.avermedia.com/web_release_www/software/AVerMedia_PW513_Firmware_#{version.csv.third}_&_CamEngine_Mac_v#{version.csv.first}.zip"
  name "Camengine"
  desc "App for the Live Streamer CAM"
  homepage "https://www.avermedia.com/us/product-detail/PW513"

  livecheck do
    skip "No version information available"
  end

  pkg "Step2.CamEngineV4_v#{version.csv.first}_#{version.csv.second}.pkg",
      choices: [
        {
          "choiceIdentifier" => "PKG_REF_0",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall launchctl: "com.avermedia.camengineV4",
            pkgutil:   "com.avermedia.UninstallForCamV4",
            trash:     "/Applications/CamEngine4"

  zap trash: [
    "~/Library/Preferences/com.avermedia.CamEngineV4.plist",
    "~/Library/Saved Application State/com.avermedia.CamEngineV4.savedState",
  ]
end
