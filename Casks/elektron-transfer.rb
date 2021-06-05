cask "elektron-transfer" do
  version "1.4.0.1"
  sha256 "2eb728e31f045e9f4c3c2fa3480b699379dedfae3c402d18b2b7dab2ef87a6b8"

  url "https://s3-eu-west-1.amazonaws.com/se-elektron-devops/release/133f6ec3-a98c-5781-9910-39a0fce402e7/Elektron_Transfer_#{version}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/se-elektron-devops/release/"
  name "Elektron Transfer"
  desc "Tool for transferring samples, presets and firmware updates"
  homepage "https://www.elektron.se/support/?connection=transfer#resources"

  livecheck do
    url "https://www.elektron.se/support/?connection=transfer"
    regex(%r{href=.*?/Elektron[._-]?Transfer[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :el_capitan"

  app "Transfer.app"
end
