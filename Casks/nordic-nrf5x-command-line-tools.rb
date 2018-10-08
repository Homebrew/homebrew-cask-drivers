cask 'nordic-nrf5x-command-line-tools' do
  version '58855.22.7064020.99977'
  sha256 'bbdbcb5ce028b56c0927727f6872707cbba7d53358d160d68c5b1da7e27f2dd2'

  url "https://www.nordicsemi.com/eng/nordic/download_resource/#{version.dots_to_slashes}"
  name 'nRF5x Command Line Tools'
  homepage 'https://www.nordicsemi.com/eng/nordic/Products/nRF51-DK/nRF5x-Command-Line-Tools-OSX/53412'

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
