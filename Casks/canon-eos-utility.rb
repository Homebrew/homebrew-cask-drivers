cask "canon-eos-utility" do
  version "3.12.1.0"
  sha256 "198a3b419ec23a2bae423401962e9bc3ac567d185d00fd640837454494057286"

  # gdlp01.c-wss.com/gds/ was verified as official when first introduced to the cask
  url "https://gdlp01.c-wss.com/gds/9/0200006049/01/EU-Installset-M#{version}.dmg.zip"
  appcast "https://my.canon/en/support/0200604902/1"
  name "Canon EOS Utility"
  homepage "https://my.canon/en/support/0200604902/1"

  installer manual: "eum#{version.major_minor_patch}-installer.app"

  uninstall delete: [
    "/Applications/Canon Utilities/CameraSurveyProgram",
    "/Applications/Canon Utilities/EOS Lens Registration Tool",
    "/Applications/Canon Utilities/EOS Utility",
    "/Applications/Canon Utilities/EOS Web Service Registration Tool",
    "/Library/Application Support/Canon_Inc_IC/ImageBrowser EX Shared/Camera/{A2E97706-9B71-482d-92F1-70B1D010B943}.plist",
    "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/Auto Update Interface Library/Uninstall_for_EOS Utility.xml",
    "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/Auto Update Interface Library/Uninstall_for_EOS Web Service Registration Tool.xml",
    "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/CameraSurveyProgram",
    "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Lens Registration Tool",
    "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Web Service Registration Tool",
    "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility",
    "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility 2",
    "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility 3",
    "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility Launcher",
  ],
            rmdir:  [
              "/Applications/Canon Utilities",
              "/Library/Application Support/Canon_Inc_IC/ImageBrowser EX Shared",
            ]

  zap trash: [
    "~/Library/Caches/com.canon.EOS-Lens-Registration-Tool",
    "~/Library/Caches/com.canon.UpdateChecker",
    "~/Library/Preferences/jp.co.canon.ic.camerasurveyprogram.plist",
    "~/Library/Preferences/com.canon.EOS-Utility.plist",
    "~/Library/Preferences/com.canon.EOS Utility 2.plist",
    "~/Library/Preferences/com.canon.EOS-Utility-3.plist",
  ]
end
