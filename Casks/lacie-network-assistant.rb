cask "lacie-network-assistant" do
  version "1.5.17"
  sha256 "fce25a342d9b54fb438ece6a17e3ed1391f1b41a5e9fd4e9459d0ca0fe828df9"

  url "https://www.lacie.com/files/lacie-content/download/drivers/LaCie%20Network%20Assistant-#{version}.dmg"
  name "LaCie Network Assistant"
  desc "Manage the CloudBox and all your LaCie network-attached storage"
  homepage "https://www.lacie.com/support/network-storage/cloudbox/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/LaCie Network Assistant-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "LaCie Network Assistant.app"
end
