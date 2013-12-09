require 'formula'

class Gyp < Formula
  homepage 'http://code.google.com/p/gyp/'
  head 'http://gyp.googlecode.com/svn/trunk', :revision => '1666'

  depends_on 'scons'

  def install
    system "mkdir -p #{prefix}"
    system "mkdir -p #{libexec}"
    system "mkdir -p #{bin}"
    # This is very similar to the Duplicity formular.
    # Install mostly into libexec
    system "python", "setup.py", "install",
                     "--prefix=#{prefix}",
                     "--install-purelib=#{libexec}",
                     "--install-platlib=#{libexec}",
                     "--install-scripts=#{bin}"
  end
end
