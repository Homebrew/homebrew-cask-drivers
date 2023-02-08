cask "ni-488-2" do
  version "21.5"
  sha256 "17c3c984c95ffb33cfbca6500d63d00896918e4f8522672972f586f617d6eca5"

  url "https://download.ni.com/support/softlib/gpib/MAC%20OS/#{version}/NI-488.2%20#{version}.dmg"
  name "NI-488.2"
  homepage "https://www.ni.com/"

  livecheck do
    url "https://www.ni.com/en-us/support/downloads/drivers/download.ni-488-2.html"
    regex(/"marketingversion"\s*:\s*"(\d+(?:\.\d+)*)"/i)
  end

  pkg "NI-488.2 #{version}.pkg"

  uninstall pkgutil: "com.ni.*",
            delete:  "/Applications/National Instruments"
end
