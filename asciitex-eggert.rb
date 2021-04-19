class AsciitexEggert < Formula
  desc "Fork of http://asciitex.sourceforge.net/ with several improvements"
  homepage "https://github.com/larseggert/asciiTeX"
  url "https://github.com/larseggert/asciiTeX/archive/refs/tags/asciiTeX-0.31.7.tar.gz"
  sha256 "a52c16941871e64c3d484ed082fc12901fa6be74e9178ff7d66cef8507cb0c23"
  license "GPL-2.0-only"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "#{bin}/asciitex", "examples/eq1.tex"
  end
end
