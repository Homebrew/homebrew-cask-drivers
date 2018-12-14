cask 'casio-exam-mode-unlocker' do
  version '1.00,5'
  sha256 '716f475829af3e737d5782552a49022aeba8622e177604ce5ccd5e0e70448af2'

  url "https://edu.casio.com/education/support_software/dl/exam_mode_unlocker/exammodeunlocker_inst_#{version.before_comma.no_dots}_#{version.after_comma}.zip"
  name 'Casio Exam Mode Unlocker'
  homepage 'https://edu.casio.com/education/support_software/'

  depends_on macos: [
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                    ]

  app 'Exam Mode Unlocker.app'
end
