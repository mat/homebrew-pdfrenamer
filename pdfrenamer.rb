require "formula"

class Pdfrenamer < Formula
  homepage "https://github.com/mat/pdfrenamer"
  url "https://github.com/mat/homebrew-pdfrenamer/releases/download/0.1/pdfrenamer.zip"
  sha256 "a8b953fd996c7090830ab3d0b1d202f17eea4e02a3ef6a2ce7f162def39351db"

  depends_on :java => "1.8+"

  def install
      inreplace "brew/pdfrenamer", "##PREFIX##", "#{prefix}"
      prefix.install "pdfrenamer.jar"
      bin.install "brew/pdfrenamer"
  end
end
