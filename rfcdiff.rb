class Rfcdiff < Formula
  desc "Generate diffs between RFCs or Internet-Drafts"
  homepage "https://github.com/ietf-tools/rfcdiff"
  url "https://github.com/ietf-tools/rfcdiff/archive/refs/tags/1.48.tar.gz"
  sha256 "11d08d059716275c3f2d25e03d1711be83bcf14de57a62fadf3406eaa0a75ade"
  license "GPL-2.0-or-later"

  depends_on "gawk"
  depends_on "wdiff"

  def install
    bin.install "rfcdiff"
  end

  test do
    (testpath/"a").write("a")
    (testpath/"b").write("b")
    system "bin/rfcdiff", "a", "b"
    assert_predicate testpath/"b-from-a.diff.html", :exist?
  end
end
