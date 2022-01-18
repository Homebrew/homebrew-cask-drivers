cask "lovense-remote" do
  version "1.5.8"
  sha256 :no_check

  url "https://lovense.com/files/apps/remote/remote.dmg"
  name "Lovense Remote"
  desc "Remote for Lovense products"
  homepage "https://lovense.com/"

  livecheck do
    url "https://lovense.com/sextoys/download"
    regex(/type=.*?Mac[-._\s]?v?[-._\s]?(\d+(?:\.\d+)+)[\s<"]/i)
  end

  app "Lovense_Remote.app"
end
