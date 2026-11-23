class Texvu < Formula
  desc "Local PDF.js viewer with SyncTeX for LaTeX workflows"
  homepage "https://github.com/sxlxc/texvu"
  url "https://github.com/sxlxc/texvu.git", tag: "v0.2.3", revision: "8a05ac49490b50983e18499881e154495dbe757f"
  license "MIT"

  depends_on "node"

  def install
    libexec.install "src", "vendor", "package.json"
    bin.install_symlink libexec/"src/cli.js" => "texvu"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/texvu --version").strip
  end
end
