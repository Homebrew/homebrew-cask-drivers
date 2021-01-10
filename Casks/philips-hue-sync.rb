cask "philips-hue-sync" do
  version "1.5.1.0"
  sha256 :no_check

  url "https://flex1548-esd.flexnetoperations.com/flexnet/operations/WebContent?fileID=HueSyncMac",
      verified: "flex1548-esd.flexnetoperations.com/flexnet/operations/"
  name "Philips Hue Sync"
  desc "Control your smart light system"
  homepage "https://www2.meethue.com/en-us/entertainment/hue-sync"

  livecheck do
    url :url
    strategy :header_match
    regex(/HueSyncInstaller_(\d+(?:\.\d+)*)\.pkg/i)
  end
  
  preflight do
    staged_path.glob("HueSyncInstaller_*.pkg").first.rename(staged_path/"HueSyncInstaller.pkg")
  end

  pkg "HueSyncInstaller.pkg"

  uninstall quit:    [
    "com.lighting.huesync",
    "com.lighting.huesync.watchdog",
  ],
            pkgutil: "com.lighting.huesync"

  zap trash: [
    "~/Library/Application Support/com.lighting.huesync",
    "~/Library/Caches/Hue Sync",
    "~/Library/Preferences/com.lighting.huesync.Hue Sync.plist",
  ]
end
