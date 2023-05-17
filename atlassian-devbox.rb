require "language/node"

class AtlassianDevbox < Formula
  desc "Atlassian enterprise products development tools"
  homepage "https://viqueen.org/notes/atlassian-devbox/"
  url "https://registry.npmjs.org/atlassian-devbox/-/atlassian-devbox-3.0.0.tgz"
  sha256 "ef5e7f0bc2e6da85464cdec03dabadb1ebea1a5052dfe7a0ddc3815f590ddf7f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
