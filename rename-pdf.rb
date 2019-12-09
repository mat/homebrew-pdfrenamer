require "formula"

class RenamePdf < Formula
  homepage "https://github.com/mat/pdfrenamer"
  url "https://github.com/mat/homebrew-rename-pdf/releases/download/0.1/pdfrenamer.jar"
  sha256 "b91a5c1522ced7de9a3b0f243c5cbbe064cc04eb792b49eafe185fc363ae14e0"

  def install
      inreplace "brew/rename-pdf", "##PREFIX##", "#{prefix}"
      prefix.install "pdfrenamer.jar"
      # bin.install "brew/rename-pdf"
  end
end
