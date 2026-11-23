class Texvu < Formula
  desc "Local PDF.js viewer with SyncTeX for LaTeX workflows"
  homepage "https://github.com/sxlxc/texvu"
  url "https://github.com/sxlxc/texvu.git", tag: "v0.2.2", revision: "566e509adfe3fe5c336a55c26f326b15115a89f5"
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
