class Coan < Formula
  desc "The C preprocessor chainsaw"
  homepage "http://coan2.sourceforge.net"
  url "https://downloads.sourceforge.net/project/coan2/v6.0.1/coan-6.0.1.tar.gz"
  sha256 "84704f484129f7c6ab6dffb5a7fecaa4cae65b32422e2a4c010c8666810c04b4"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    bin.install "src/coan"
    man1.install "man/coan.1.gz"
  end

  test do
    system "#{bin}/coan"
  end
end
