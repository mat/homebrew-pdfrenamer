class Pdfrenamer < Formula
  desc "Rename PDFs based on content"
  homepage "https://github.com/mat/pdfrenamer"
  url "https://github.com/mat/homebrew-pdfrenamer/releases/download/0.2/pdfrenamer.zip"
  sha256 "6312fa4ec736a593ef3361c96d3231c93e6a7e6adb256d0441dcb8ab04e55436"

  depends_on :java => "1.8+"

  def install
    inreplace "brew/pdfrenamer", "##PREFIX##", prefix.to_s
    prefix.install "pdfrenamer.jar"
    bin.install "brew/pdfrenamer"
  end
end
