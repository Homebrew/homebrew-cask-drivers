cask "konica-minolta-bizhub-c759-c658-c368-c287-c3851-driver" do
  if MacOS.version <= :catalina
    version "11.6.0,08e8308b1e134d6bb6837e3b046b126b,122431"
    sha256 "8baec3e834f41d4156b3da9ff598171af4182290d7af1183f07df7476158a4b7"
  else
    version "11.8.0A,7228bd01e7674417c6a223ce7a186487,130160"
    sha256 "0c525868b8f07c257fae3c949fdcfad623edfe7b81d030a771601d2cb88c7796"
  end

  url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=#{version.csv[1]}&tx_kmanacondaimport_downloadproxy[documentId]=#{version.csv[2]}&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"
  name "KONICA MINOLTA bizhub C759/C658/C368/C287/C3851 Series Printer"
  desc "Drivers for Konica Monolta Bizhub printers"
  homepage "https://www.konicaminolta.eu/en/business-solutions/support/download-center.html"

  livecheck do
    url "https://dl.konicaminolta.eu/en/?tx_kmdownloadcenter_dlajaxservice[action]=getDocuments&tx_kmdownloadcenter_dlajaxservice[controller]=AjaxService&tx_kmdownloadcenter_dlajaxservice[productId]=102314&tx_kmdownloadcenter_dlajaxservice[system]=KonicaMinolta&cHash=dd72618a38434b6cb3edfc20595d58c5&type=1527583889"
    strategy :page_match do |page|
      items = JSON.parse(page).select do |i|
        i["TypeOfApplicationName_textS"]&.match?(/driver/i) &&
          i["OperatingSystemsNames_textM"]&.grep(/macOS.*?#{Regexp.escape(MacOS.version.to_s)}/i)&.any?
      end

      item = items.max_by { |i| i["ReleaseDate_textS"] }
      files = item["DownloadFiles_textS"].split("\n").map { |file| file.split("|") }
      dmg = files.find { |f| f.first.end_with?(".dmg") }

      "#{item["Version_textS"]},#{Digest::MD5.hexdigest(dmg[2])},#{item["AnacondaId_textS"]}"
    end
  end

  depends_on macos: ">= :sierra"

  if MacOS.version <= :catalina
    pkg "C759_C658_C368_C287_C3851_Series_v#{version}_Letter/C759_C658_C368_C287_C3851.pkg"
  else
    pkg "C759_C658_C368_C287_C3851_#{version.major}.pkg"
  end

  uninstall pkgutil: "jp.konicaminolta.print.package.C759"
end
