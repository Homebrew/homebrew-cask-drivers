cask "bose-usb-link-updater" do
  version "1.0.0"
  sha256 "1086c315960d850c0d62e3d26689559dd904c65b73797f7cc9c54d79f4742095"

  url "https://assets.bose.com/content/dam/Bose_DAM/Web/pro/software/bose_work/700uc/1_0_0/Bose-USB-Link-Updater-Mac-#{version}.pkg.zip"
  name "Bose USB Link Updater"
  desc "Provides updates to Bose USB Link"
  homepage "https://pro.bose.com/"

  livecheck do
    url "https://pro.bose.com/en_us/products/software/conferencing_software/bose-usb-link-updater.html"
    regex(/href=.*?Bose-USB-Link-Updater-Mac-(.*?)\.pkg\.zip/i)
  end

  pkg "Bose-USB-Link-Updater-Mac-#{version}.pkg"

  uninstall quit:    [
              "com.bose.pro.conf.usblinkupdater",
            ],
            pkgutil: [
              "com.bose.pro.conf.usblinkupdater",
            ]

  zap trash: [
    "~/Library/Logs/Bose-USB-Link-Updater",
  ]
end
