cask 'reolink-client' do
  version '3.5.0.50'
  sha256 'fe688b9c97798c7668db45b35f353b972c075155293677c6dc06e6b98bbe26e3'

  # s3.amazonaws.com/reolink-storage was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/reolink-storage/website/client/Mac-ReolinkClient.zip'
  name 'Reolink Client'
  homepage 'https://reolink.com/software-and-manual/'

  container nested: "Mac-ReolinkClient/Mac-ReolinkClient-#{version}.dmg"

  app 'Reolink Client.app'
end
