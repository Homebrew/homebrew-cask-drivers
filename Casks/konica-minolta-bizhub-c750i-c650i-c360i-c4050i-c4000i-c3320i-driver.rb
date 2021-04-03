cask "konica-minolta-bizhub-c750i-c650i-c360i-c4050i-c4000i-c3320i-driver" do
  version "2.2.3A,f2ecbc809ef24949980f4af4f0b66fc9:127009"
  sha256 "636d2bc1443c25fa5b081b1624a9c27163172c88e4fd03fade980e9ae7f2b5d5"

  url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=#{version.after_comma.before_colon}&tx_kmanacondaimport_downloadproxy[documentId]=#{version.after_colon}&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"
  name "Konica Minolta Bizhub C750i/C650i/C360i/C4050i/C4000i/C3320i Printer Driver"
  desc "PostScript printer driver"
  homepage "https://www.konicaminolta.eu/eu-en/support/download-centre"

  livecheck do
    url "https://dl.konicaminolta.eu/en/?tx_kmdownloadcenter_dlajaxservice[action]=getDocuments&tx_kmdownloadcenter_dlajaxservice[controller]=AjaxService&tx_kmdownloadcenter_dlajaxservice[productId]=103745&tx_kmdownloadcenter_dlajaxservice[system]=KonicaMinolta&cHash=dd72618a38434b6cb3edfc20595d58c5&type=1527583889"
    strategy :page_match do |page|
      items = JSON.parse(page).select do |i|
        i["TypeOfApplicationName_textS"]&.match?(/driver/i) &&
          i["OperatingSystemsNames_textM"]&.grep(/macOS/i)&.any?
      end

      item = items.max_by { |i| i["ReleaseDate_textS"] }
      files = item["DownloadFiles_textS"].split("\n").map { |file| file.split("|") }

      "#{item["Version_textS"]},#{Digest::MD5.hexdigest(files.first[2])}:#{item["AnacondaId_textS"]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "A4/C750i_C650i_C360i_C287i_C286i_C4050i_C4000i_C3320i.pkg"

  uninstall pkgutil: "jp.konicaminolta.print.package.C750i"
end
