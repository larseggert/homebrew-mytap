class Sfuzz < Formula
  desc "Simple config-file driven block/mutation based fuzzing system"
  homepage "https://tools.kali.org/vulnerability-analysis/sfuzz"
  head "https://github.com/orgcandman/Simple-Fuzzer.git"

  depends_on "openssl"

  def install
    inreplace "configure" do |s|
      s.gsub! /SED -re/, "SED -Ee"
      s.gsub! %r{/usr/local/include}, "/usr/local/include /usr/local/opt/openssl/include"
      s.gsub! %r{/usr/local/lib}, "/usr/local/lib /usr/local/opt/openssl/lib"
    end

    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/sfuzz", "-V"
  end
end
