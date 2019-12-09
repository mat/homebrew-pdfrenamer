require "formula"

class RenamePdf < Formula
  homepage "https://github.com/mat/pdfrenamer"
  url "https://github.com/mat/homebrew-rename-pdf/releases/download/0.1/rename-pdf.zip"
  sha256 "1875b1273768e4b30f819261b26e8cd677b1d085adb63a6356d3e7f7afb3fc16"

  def install
      inreplace "brew/rename-pdf", "##PREFIX##", "#{prefix}"
      prefix.install "pdfrenamer.jar"
      bin.install "brew/rename-pdf"
  end
end
