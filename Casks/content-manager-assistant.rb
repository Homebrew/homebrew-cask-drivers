cask "content-manager-assistant" do
  version :latest
  sha256 :no_check

  url "http://cma.dl.playstation.net/cma/module/mac/CMAInstaller.pkg"
  name "Content Manager Assistant for PlayStation®"
  homepage "http://cma.dl.playstation.net/cma/mac/en/index.html"

  pkg "CMAInstaller.pkg"

  uninstall quit:    [
              "jp.co.scei.ContentManagerAssistant",
              "jp.co.scei.ContentManagerAssistant.Watcher",
            ],
            pkgutil: "jp.co.scei.ContentManagerAssistant.installer"

  zap trash: [
    "~/Documents/PS Vita",
    "~/Library/Application Support/Sony Corporation/Content Manager Assistant",
    "~/Library/Caches/jp.co.scei.ContentManagerAssistant.Downloader",
    "~/Library/Preferences/jp.co.scei.ContentManagerAssistant.plist",
  ]

  caveats do
    reboot
  end
end
