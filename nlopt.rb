require "formula"

class Nlopt < Formula
  homepage "http://ab-initio.mit.edu/nlopt/"
  url "http://ab-initio.mit.edu/nlopt/nlopt-2.4.1.tar.gz"
  sha1 "181181a3f7dd052e0740771994eb107bd59886ad"
  depends_on 'octave' => :optional

  def install
    ENV.deparallelize
    system "./configure", "--with-cxx",
                          "--enable-shared",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
