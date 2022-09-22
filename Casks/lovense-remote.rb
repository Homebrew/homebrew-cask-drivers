cask "lovense-remote" do
  version "1.6.3"
  sha256 :no_check

  url "https://www.lovense.com/files/apps/remote/remote.dmg"
  name "Lovense Remote"
  desc "Remote for Lovense products"
  homepage "https://www.lovense.com/"

  livecheck do
    url "https://www.lovense.com/sextoys/download"
    regex(/Mac\sv?(\d+(?:\.\d+)+)/i)
  end

  app "Lovense_Remote.app"
end
