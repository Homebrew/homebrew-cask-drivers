cask "ricoh-theta" do
  version "3.19.1,4"
  sha256 :no_check

  url "https://theta360-statics.s3.amazonaws.com/app/viewer/RICOH%20THETA.dmg",
      verified: "theta360-statics.s3.amazonaws.com/app/viewer/"
  name "RICOH THETA"
  homepage "https://theta360.com/en/support/download/pcmac/"

  app "RICOH THETA.app"
end
