cask 'blackmagic-desktop-video' do
  version '10.9.7'
  sha256 '84bd14be508332d2da010d43a7eae74af1305a48052b72aaa9708e8143b4d9ec'

  url 'http://sw.blackmagicdesign.com/DesktopVideo/v10.9.7/Blackmagic_Desktop_Video_Macintosh_10.9.7.zip?Key-Pair-Id=APKAJTKA3ZJMJRQITVEA&Signature=I4/V92Wv8nowO5hI7TiITzmGjaPVVXbZdzAb9XXRkn1GwaXJ4IQ7KG3Cthym4AUzI+ZwWMkESCLyMoyfFWECmusjPY7+SPFPWlKW0vEKSr+CtfHqCFk4Nq1FJ6hcmqMAXB+I6DI2pG5iDGaj3AHCyVWHUZI7HGEIckElKWNnPyZWn6vOVcGD3GNi0jZwbmCB0uKhjrj6NOfYj6+3Z5NedtJFdvTU3NYJDaOocbs6KlKvE04peBDU3Z1psT5wiKKIPAi0YnXHIdxbX3XefYY1iOgZa7nA2DrUgb+lekNef9skwzR69h8CpKoU5Ad6Z9CO2nOM0mynZWiS8pHXbZ7AUw==&Expires=1506801058'
  name 'Blackmagic Desktop Video'
  homepage 'https://www.blackmagicdesign.com/support/family/capture-and-playback'

  pkg "Install Desktop Video #{version}.pkg"

  uninstall script: 'Uninstall Desktop Video.app/Contents/MacOS/Uninstall DeckLink'
end
