cask "philips-hue-sync" do
  version :latest
  sha256 :no_check

  url "https://flex1548-esd.flexnetoperations.com/flexnet/operations/WebContent?fileID=HueSyncMac",
      verified: "flex1548-esd.flexnetoperations.com/flexnet/operations/"
  name "Philips Hue Sync"
  homepage "https://www2.meethue.com/en-us/entertainment/hue-sync"

  container type: :naked

  pkg "philips-hue-sync.pkg"

  # This is a horrible hack to force the file extension.
  # The backend code should be fixed so that this is not needed.
  preflight do
    system_command "/bin/mv", args: ["--", staged_path.join("WebContent"), staged_path.join("philips-hue-sync.pkg")]
  end

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
