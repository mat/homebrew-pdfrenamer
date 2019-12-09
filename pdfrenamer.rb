require "formula"

class PdfRenamer < Formula
  homepage "https://github.com/mat/pdfrenamer"
  url "https://github.com/mat/homebrew-pdfrenamer/releases/download/0.1/pdfrenamer.zip"
  sha256 "54495358a4de3d5ca7fcb5d35adcbe3ba5ffe12f7b0edba2c985bd5c326a8c9f"

  def install
      inreplace "brew/pdfrenamerx", "##PREFIX##", "#{prefix}"
      prefix.install "pdfrenamer.jar"
      bin.install "brew/pdfrenamerx"
  end
end
