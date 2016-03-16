class Banal < Formula
  desc "Format checker for PDF documents"
  homepage "http://www.sysnet.ucsd.edu/sigops/banal/"
  url "http://www.sysnet.ucsd.edu/sigops/banal/banal"
  version "1.2.2"
  sha256 "4cbb4bf2c29b05329ea2e94039e6643585c7be387e2c95c40ac41ecde64c24ad"

  depends_on "poppler"

  def install
    bin.install "banal"
  end

  test do
    system "banal"
  end
end
