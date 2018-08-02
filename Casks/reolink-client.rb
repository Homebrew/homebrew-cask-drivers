cask 'reolink-client' do
  version '3.4.2.49'
  sha256 '9a0f882ca429cf0fef4162aa51d6de751aac674670fedcb346a1a0b3a85ae30e'

  # s3.amazonaws.com/reolink-storage was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/reolink-storage/website/client/Mac-ReolinkClient.zip'
  name 'Reolink Client'
  homepage 'https://reolink.com/software-and-manual/'

  container nested: "Mac-ReolinkClient/Mac-ReolinkClient-#{version}.dmg"

  app 'Reolink Client.app'
end
