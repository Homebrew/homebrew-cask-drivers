cask "elektron-transfer" do
  version "1.4.0.1,133f6ec3-a98c-5781-9910-39a0fce402e7"
  sha256 "2eb728e31f045e9f4c3c2fa3480b699379dedfae3c402d18b2b7dab2ef87a6b8"

  url "https://se-elektron-devops.s3.amazonaws.com/release/#{version.after_comma}/Elektron_Transfer_#{version.before_comma}.dmg",
      verified: "se-elektron-devops.s3.amazonaws.com/release/"
  name "Elektron Transfer"
  desc "Tool for transferring samples, presets and firmware updates"
  homepage "https://www.elektron.se/support/?connection=transfer#resources"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{href=.*?/(\h+(?:-\h+)*)/Elektron[._-]?Transfer[._-]?v?(\d+(?:\.\d+)+)\.dmg}i).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on macos: ">= :el_capitan"

  app "Transfer.app"
end
