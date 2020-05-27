class Rfcdiff < Formula
  desc "Generate diffs between RFCs or Internet-Drafts"
  homepage "https://tools.ietf.org/tools/rfcdiff/"
  url "https://tools.ietf.org/tools/rfcdiff/rfcdiff-1.46.tgz"
  sha256 "f4ab321e88b3d76c550545d9adc19b665435929bd8e1d0ed41d4f65eb2f77bcb"

  depends_on "gawk"
  depends_on "wdiff"

  def install
    bin.install "rfcdiff"
    prefix.install "todo"
  end

  test do
  end
end
