class Pdfrenamer < Formula
  desc "Rename PDFs based on content"
  homepage "https://github.com/mat/pdfrenamer"
  url "https://github.com/mat/homebrew-pdfrenamer/releases/download/0.3/pdfrenamer.zip"
  sha256 "68275d6b027da2d8534a54f4d02bd2b07f4282df55af3cb14be8eebc6bc3d1d3"

  depends_on :java => "1.8+"

  def install
    inreplace "brew/pdfrenamer", "##PREFIX##", prefix.to_s
    prefix.install "pdfrenamer.jar"
    bin.install "brew/pdfrenamer"
  end
end
