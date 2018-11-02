cask 'reolink-client' do
  version '3.5.1.53'
  sha256 '70d114e02ec772d3cae83f4a31b826b26ad86354811abef929593b63bc7638a4'

  # s3.amazonaws.com/reolink-storage was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/reolink-storage/website/client/Mac-ReolinkClient.zip'
  name 'Reolink Client'
  homepage 'https://reolink.com/software-and-manual/'

  app 'Reolink Client.app'
    
  preflight do
    set_permissions "#{staged_path}/Mac-ReolinkClient-#{version}.dmg", '0755'
  end
end
